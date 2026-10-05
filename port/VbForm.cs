using System.Media;
using System.Text.Json;

namespace ZNK;

/// <summary>
/// Rebuilds a VB6 form from Assets/layout.json (recovered from the original
/// executable) and emulates the handful of VB6 behaviours the game relies on:
/// stored Visible flags, automatic drag mode, tooltips and custom cursors.
/// </summary>
[System.ComponentModel.DesignerCategory("Code")]   // built at runtime from layout.json; nothing for the VS designer to edit
class VbForm : Form
{
    protected static readonly string AssetDir = Path.Combine(AppContext.BaseDirectory, "Assets");

    readonly Dictionary<string, Control> byName = new(StringComparer.OrdinalIgnoreCase);
    // VB6 returns a control's own Visible setting even while its container is
    // hidden; WinForms does not, so the game logic reads this table instead.
    readonly Dictionary<Control, bool> ownVisible = new();
    readonly Dictionary<Control, Action<Control>> dropHandlers = new();
    readonly HashSet<Control> autoDrag = new();
    readonly Dictionary<string, Cursor> cursors = new();
    readonly Dictionary<string, Image> images = new();
    readonly ToolTip tips = new();
    protected readonly Dictionary<string, System.Windows.Forms.Timer> timers = new(StringComparer.OrdinalIgnoreCase);
    Control dragging;

    protected VbForm()
    {
        Text = Program.Title;
        // The original was laid out for a full 800x600 screen and draws its own
        // close button, so the port uses a borderless 800x600 window.
        FormBorderStyle = FormBorderStyle.None;
        StartPosition = FormStartPosition.CenterScreen;
        ClientSize = new Size(800, 600);
        AutoScaleMode = AutoScaleMode.None;
        Font = new Font("Microsoft Sans Serif", 8.25f);   // VB6 default
        var ico = Path.Combine(AssetDir, "icons", "app.ico");
        if (File.Exists(ico)) Icon = new Icon(ico);
    }

    // ---------------------------------------------------------------- build

    protected void Build(string formName)
    {
        using var doc = JsonDocument.Parse(File.ReadAllText(Path.Combine(AssetDir, "layout.json")));
        var items = doc.RootElement.GetProperty(formName).EnumerateArray().ToList();

        var children = new Dictionary<string, List<JsonElement>>();
        foreach (var e in items)
        {
            var parent = e.GetProperty("parent").GetString();
            if (!children.TryGetValue(parent, out var list)) children[parent] = list = new();
            list.Add(e);
        }

        SuspendLayout();
        AddChildren(this, "<form>", children);
        ResumeLayout(false);
    }

    void AddChildren(Control parent, string parentName, Dictionary<string, List<JsonElement>> children)
    {
        if (!children.TryGetValue(parentName, out var list)) return;
        // In VB6 the first control in the file is topmost, and lightweight
        // controls (Image, Label, Line) always sit below windowed ones.
        // WinForms puts the first-added control on top, so add in that order.
        foreach (var e in list.OrderBy(e => IsLightweight(Str(e, "type")) ? 1 : 0))
        {
            var c = Create(e);
            if (c == null) continue;
            parent.Controls.Add(c);
            AddChildren(c, Str(e, "name"), children);
        }
    }

    static bool IsLightweight(string type) => type is "Image" or "Label" or "Line";

    Control Create(JsonElement e)
    {
        string type = Str(e, "type"), name = Str(e, "name");
        if (e.TryGetProperty("index", out var ix)) name += "(" + ix.GetInt32() + ")";

        if (type == "Timer")
        {
            timers[name] = new System.Windows.Forms.Timer();
            return null;
        }

        Control c;
        switch (type)
        {
            case "PictureBox":
            case "Image":
                var pb = new PictureBox { SizeMode = PictureBoxSizeMode.Normal };
                pb.Image = LoadImage(Str(e, "picture"));
                // A VB Image is windowless and see-through; a VB PictureBox is opaque.
                pb.BackColor = type == "Image" ? Color.Transparent : OleColor(e, "backColor", SystemColors.Control);
                c = pb;
                break;
            case "Label":
                var lb = new Label { AutoSize = false, UseMnemonic = false, Text = Str(e, "caption") ?? "" };
                lb.BackColor = OleColor(e, "backColor", SystemColors.Control);
                lb.ForeColor = OleColor(e, "foreColor", SystemColors.ControlText);
                lb.TextAlign = Int(e, "align") switch { 2 => ContentAlignment.TopCenter, 1 => ContentAlignment.TopRight, _ => ContentAlignment.TopLeft };
                c = lb;
                break;
            case "TextBox":
                c = new TextBox { BorderStyle = BorderStyle.Fixed3D };
                break;
            case "Line":
                int x1 = Int(e, "x1"), x2 = Int(e, "x2"), y1 = Int(e, "y1"), y2 = Int(e, "y2");
                c = new Panel { BackColor = Color.Black, Bounds = new Rectangle(Math.Min(x1, x2), Math.Min(y1, y2), Math.Max(1, Math.Abs(x2 - x1)), Math.Max(1, Math.Abs(y2 - y1))) };
                break;
            default:
                return null;
        }

        c.Name = name;
        if (type != "Line") c.Bounds = new Rectangle(Int(e, "x"), Int(e, "y"), Int(e, "w"), Int(e, "h"));
        c.Margin = Padding.Empty;

        if (e.TryGetProperty("font", out var f))
            c.Font = new Font(f.GetProperty("name").GetString(), (float)f.GetProperty("size").GetDouble(),
                f.GetProperty("weight").GetInt32() >= 600 ? FontStyle.Bold : FontStyle.Regular);

        bool visible = !e.TryGetProperty("visible", out var v) || v.GetBoolean();
        c.Visible = visible;
        ownVisible[c] = visible;

        var tip = Str(e, "tooltip");
        if (tip != null) tips.SetToolTip(c, tip);
        var cur = LoadCursor(Str(e, "mouseIcon"));
        if (cur != null) c.Cursor = cur;

        if (e.TryGetProperty("dragAuto", out var d) && d.GetBoolean())
        {
            autoDrag.Add(c);
            c.MouseDown += (s, a) => { if (a.Button == MouseButtons.Left) BeginDrag(c); };
            c.MouseUp += (s, a) => { if (a.Button == MouseButtons.Left) EndDrag(); };
        }

        byName[name] = c;
        return c;
    }

    static string Str(JsonElement e, string key) =>
        e.TryGetProperty(key, out var v) && v.ValueKind == JsonValueKind.String ? v.GetString() : null;

    static int Int(JsonElement e, string key) =>
        e.TryGetProperty(key, out var v) && v.ValueKind == JsonValueKind.Number ? v.GetInt32() : 0;

    static Color OleColor(JsonElement e, string key, Color fallback) =>
        e.TryGetProperty(key, out var v) && v.ValueKind == JsonValueKind.Number
            ? ColorTranslator.FromOle(unchecked((int)v.GetUInt32())) : fallback;

    Image LoadImage(string file)
    {
        if (file == null) return null;
        if (images.TryGetValue(file, out var img)) return img;
        var path = Path.Combine(AssetDir, "images", file.Replace('/', Path.DirectorySeparatorChar));
        if (!File.Exists(path)) return null;
        // Load through a copy so the file is not kept locked.
        using var tmp = Image.FromStream(new MemoryStream(File.ReadAllBytes(path)));
        return images[file] = new Bitmap(tmp);
    }

    Cursor LoadCursor(string file)
    {
        if (file == null) return null;
        if (cursors.TryGetValue(file, out var cur)) return cur;
        try
        {
            var path = Path.Combine(AssetDir, "images", file.Replace('/', Path.DirectorySeparatorChar));
            var icon = new Icon(path, 32, 32);          // kept alive for the cursor's lifetime
            return cursors[file] = new Cursor(icon.Handle);
        }
        catch { return cursors[file] = Cursors.Hand; }
    }

    // ------------------------------------------------------------- helpers

    protected Control C(string name) =>
        byName.TryGetValue(name, out var c) ? c : throw new InvalidOperationException("Unknown control: " + name);

    /// <summary>VB6 "X.Visible" (the control's own setting).</summary>
    protected bool V(string name) => ownVisible[C(name)];

    protected void Show(string name) => SetVisible(name, true);
    protected void Hide(string name) => SetVisible(name, false);

    void SetVisible(string name, bool value)
    {
        var c = C(name);
        ownVisible[c] = value;
        c.Visible = value;
    }

    protected void SetText(string name, string text) => C(name).Text = text;
    protected string GetText(string name) => C(name).Text;
    protected void Tip(string name, string text) => tips.SetToolTip(C(name), text);

    protected void MsgBox(string text) => MessageBox.Show(this, text, Program.Title);

    /// <summary>VB6 "End".</summary>
    protected static void End() => Application.Exit();

    /// <summary>sndPlaySound(file, SND_ASYNC) relative to the game folder.</summary>
    protected static void PlaySound(string file)
    {
        try
        {
            var dir = Path.Combine(AssetDir, "sounds");
            var path = Directory.Exists(dir)
                ? Directory.EnumerateFiles(dir).FirstOrDefault(p => string.Equals(Path.GetFileName(p), file, StringComparison.OrdinalIgnoreCase))
                : null;
            if (path != null) new SoundPlayer(path).Play();
        }
        catch { /* the original ignored sound errors too */ }
    }

    // -------------------------------------------------------------- events

    /// <summary>
    /// Wires a Click handler. Controls in automatic drag mode never raised
    /// Click in VB6, so their handlers stay unwired here as well.
    /// </summary>
    protected void OnClick(string name, Action handler)
    {
        var c = C(name);
        if (!autoDrag.Contains(c)) c.Click += (s, a) => handler();
    }

    protected void OnDblClick(string name, Action handler)
    {
        var c = C(name);
        if (!autoDrag.Contains(c)) c.DoubleClick += (s, a) => handler();
    }

    protected void OnDragDrop(string name, Action<Control> handler) => dropHandlers[C(name)] = handler;

    void BeginDrag(Control source)
    {
        dragging = source;
        source.Capture = true;
        Cursor.Current = Cursors.NoMove2D;
    }

    void EndDrag()
    {
        var source = dragging;
        if (source == null) return;
        dragging = null;
        source.Capture = false;
        Cursor.Current = Cursors.Default;

        // Deepest visible control under the mouse receives DragDrop(Source).
        var screen = Cursor.Position;
        Control target = this;
        while (true)
        {
            var child = target.GetChildAtPoint(target.PointToClient(screen), GetChildAtPointSkip.Invisible);
            if (child == null) break;
            target = child;
        }
        if (dropHandlers.TryGetValue(target, out var handler)) handler(source);
    }
}
