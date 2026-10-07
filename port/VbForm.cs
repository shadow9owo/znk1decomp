using System.Media;
using System.Text.Json;
using global::System;
using global::System.Collections.Generic;
using global::System.Drawing;
using global::System.IO;
using global::System.Linq;
using global::System.Threading;
using global::System.Threading.Tasks;
using global::System.Windows.Forms;

using ZNK.Helpers;
using static ZNK.Helpers.GameData;
using static ZNK.Helpers.Loaders;
using static ZNK.Helpers.Form.FormHelpers;

namespace ZNK
{
    [System.ComponentModel.DesignerCategory("Code")]
    public class VbForm : Form
    {
        public VbForm()
        {
            Text = Program.Title;
            FormBorderStyle = FormBorderStyle.FixedSingle; //bordered because borderless is overrated
            MaximizeBox = false;
            StartPosition = FormStartPosition.CenterScreen;
            ClientSize = new Size(800, 600);
            AutoScaleMode = AutoScaleMode.None;
            Font = new Font("Microsoft Sans Serif", 8.25f);
            var ico = Path.Combine(Helpers.GameData.AssetDir, "icons", "app.ico");
            if (File.Exists(ico)) Icon = new Icon(ico);
        }

        protected void Show(string name)
        {
            Helpers.Form.FormHelpers.Show(name);
        }

        protected void Hide(string name)
        {
            Helpers.Form.FormHelpers.Hide(name);
        }

        protected void OnClick(string name, Action handler)
        {
            Helpers.Form.FormHelpers.OnClick(name, handler);
        }

        protected void OnDragDrop(string name, Action<Control> handler)
        {
            Helpers.Form.FormHelpers.OnDragDrop(name, handler);
        }

        protected void Build(string formName)
        {
            using (var doc = JsonDocument.Parse(File.ReadAllText(Path.Combine(Helpers.GameData.AssetDir, "layout.json"))))
            {
                var items = doc.RootElement.GetProperty(formName).EnumerateArray().ToList();

                var children = new Dictionary<string, List<System.Text.Json.JsonElement>>();
                foreach (var e in items)
                {
                    var parent = e.GetProperty("parent").GetString();
                    if (!children.TryGetValue(parent, out var list))
                    {
                        list = new List<System.Text.Json.JsonElement>();
                        children[parent] = list;
                    }
                    list.Add(e);
                }

                SuspendLayout();
                AddChildren(this, "<form>", children);
                ResumeLayout(false);
            }
        }

        void AddChildren(Control parent, string parentName, Dictionary<string, List<JsonElement>> children)
        {
            if (!children.TryGetValue(parentName, out var list)) return;
            foreach (var e in list.OrderBy(e => IsLightweight(Json.Str(e, "type")) ? 1 : 0))
            {
                var c = Create(e);
                if (c == null) continue;
                parent.Controls.Add(c);
                AddChildren(c, Json.Str(e, "name"), children);
            }
        }

        static bool IsLightweight(string type)// type is "Image" or "Label" or "Line"
        {
            return type == "Image" ||
                    type == "Label" ||
                    type == "Line";
        }

        ContentAlignment GetAligment(JsonElement a, string b) //Int(e, "align") //switch { 2 => ContentAlignment.TopCenter, 1 => ContentAlignment.TopRight, _ => ContentAlignment.TopLeft };
        {
            switch (Json.Int(a, b))
            {
                case 2:
                    return ContentAlignment.TopCenter;
                case 1:
                    return ContentAlignment.TopRight;
                default:
                    return ContentAlignment.TopLeft;
            }
        }

        Control Create(JsonElement e) // finished
        {
            string type = Json.Str(e, "type"), name = Json.Str(e, "name");
            if (e.TryGetProperty("index", out var ix)) name += "(" + ix.GetInt32() + ")";

            if (type == "Timer")
            {
                Helpers.GameData.timers[name] = new System.Windows.Forms.Timer();
                return null;
            }

            Control control; //window element
            switch (type)
            {
                case "PictureBox":
                case "Image":
                    var pb = new PointPictureBox { SizeMode = PictureBoxSizeMode.Normal };
                    pb.Image = Helpers.Loaders.LoadImage(Json.Str(e, "picture"));
                    // A VB Image is windowless and see-through; a VB PictureBox is opaque.
                    pb.BackColor = type == "Image" ? Color.Transparent : Json.OleColor(e, "backColor", SystemColors.Control);
                    control = pb;
                    break;
                case "Label":
                    var lb = new Label { AutoSize = false, UseMnemonic = false, Text = Json.Str(e, "caption") ?? "" };
                    lb.BackColor = Json.OleColor(e, "backColor", SystemColors.Control);
                    lb.ForeColor = Json.OleColor(e, "foreColor", SystemColors.ControlText);
                    lb.TextAlign = GetAligment(e, "align");
                    control = lb;
                    break;
                case "TextBox":
                    control = new TextBox { BorderStyle = BorderStyle.Fixed3D };
                    break;
                case "Line":
                    int x1 = Json.Int(e, "x1"), x2 = Json.Int(e, "x2"), y1 = Json.Int(e, "y1"), y2 = Json.Int(e, "y2");
                    control = new Panel { BackColor = Color.Black, Bounds = new Rectangle(Math.Min(x1, x2), Math.Min(y1, y2), Math.Max(1, Math.Abs(x2 - x1)), Math.Max(1, Math.Abs(y2 - y1))) };
                    break;
                default:
                    return null;
            }

            control.Name = name;
            if (type != "Line") control.Bounds = new Rectangle(Json.Int(e, "x"), Json.Int(e, "y"), Json.Int(e, "w"), Json.Int(e, "h"));
            control.Margin = Padding.Empty;

            if (e.TryGetProperty("font", out var f))
            {
                control.Font = new Font(f.GetProperty("name").GetString(), (float)f.GetProperty("size").GetDouble(), f.GetProperty("weight").GetInt32() >= 600 ? FontStyle.Bold : FontStyle.Regular);
            }
            bool visible = !e.TryGetProperty("visible", out var v) || v.GetBoolean();
            control.Visible = visible;
            Helpers.GameData.ownVisible[control] = visible;

            var tip = Json.Str(e, "tooltip");
            if (tip != null) Helpers.GameData.tips.SetToolTip(control, tip);
            var cur = Helpers.Loaders.LoadCursor(Json.Str(e, "mouseIcon"));
            if (cur != null) control.Cursor = cur;

            if (e.TryGetProperty("dragAuto", out var d) && d.GetBoolean())
            {
                Helpers.GameData.autoDrag.Add(control);
                control.MouseDown += (s, a) => { if (a.Button == MouseButtons.Left) Helpers.Form.FormHelpers.BeginDrag(control); };
                control.MouseUp += (s, a) => { if (a.Button == MouseButtons.Left) Helpers.Form.FormHelpers.EndDrag(); };
            }

            Helpers.GameData.byName[name] = control;
            return control;
        }
        protected override void OnFormClosed(FormClosedEventArgs e)
        {
            base.OnFormClosed(e);
            Application.Exit();
        }

    }

    // pixel art - draw with point (nearest neighbor) filtering instead of bilinear
    [System.ComponentModel.DesignerCategory("Code")]
    public class PointPictureBox : PictureBox
    {
        protected override void OnPaint(PaintEventArgs pe)
        {
            pe.Graphics.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.NearestNeighbor;
            pe.Graphics.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.Half;
            base.OnPaint(pe);
        }
    }
} 