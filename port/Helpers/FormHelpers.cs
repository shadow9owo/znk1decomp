using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Media;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ZNK.Helpers.Form
{
    public class FormHelpers
    {
        public static Control GetControlSafe(string name)
        {
            ZNK.Helpers.GameData.byName.TryGetValue(name, out var c);
            if (c != null)
            {
                return c;
            }
            else
            {
                throw new InvalidOperationException("Unknown control: " + name);
            }
        }

        public static bool IsOwnVisible(string name)
        {
            return ZNK.Helpers.GameData.ownVisible[GetControlSafe(name)];
        }

        public static void Show(string name)
        {
            SetVisible(name, true);
        }

        public static void Hide(string name)
        {
            SetVisible(name, false);
        }

        public static void SetVisible(string name, bool value)
        {
            var c = GetControlSafe(name);
            ZNK.Helpers.GameData.ownVisible[c] = value;
            c.Visible = value;
        }

        public static void SetText(string name, string text)
        {
            GetControlSafe(name).Text = text;
        }
        public static string GetText(string name)
        {
            return GetControlSafe(name).Text;
        }
        public static void Tip(string name, string text)
        {
            ZNK.Helpers.GameData.tips.SetToolTip(GetControlSafe(name), text);
        }

        public static void MsgBox(string text)
        {
            MessageBox.Show(Application.OpenForms[Application.OpenForms.Count - 1], text, Program.Title);
        }
        public static void End()
        {
            Application.Exit();
        }

        public static void PlaySound(string file)
        {
            try
            {
                var dir = Path.Combine(ZNK.Helpers.GameData.AssetDir, "sounds");
                var path = Directory.Exists(dir)
                    ? Directory.EnumerateFiles(dir).FirstOrDefault(p => string.Equals(Path.GetFileName(p), file, StringComparison.OrdinalIgnoreCase))
                    : null;
                if (path != null) new SoundPlayer(path).Play();
            }
            catch { /* the original ignored sound errors too */ }
        }

        public static void OnClick(string name, Action handler)
        {
            var c = GetControlSafe(name);
            if (!ZNK.Helpers.GameData.autoDrag.Contains(c)) c.Click += (s, a) => handler();
        }

        public static void OnDblClick(string name, Action handler)
        {
            var c = GetControlSafe(name);
            if (!ZNK.Helpers.GameData.autoDrag.Contains(c)) c.DoubleClick += (s, a) => handler();
        }

        public static void OnDragDrop(string name, Action<Control> handler)
        {
            ZNK.Helpers.GameData.dropHandlers[GetControlSafe(name)] = handler;
        }

        public static void BeginDrag(Control source)
        {
            ZNK.Helpers.GameData.dragging = source;
            source.Capture = true;
            Cursor.Current = Cursors.NoMove2D;
        }

        public static void EndDrag()
        {
            var source = ZNK.Helpers.GameData.dragging;
            if (source == null) return;
            ZNK.Helpers.GameData.dragging = null;
            source.Capture = false;
            Cursor.Current = Cursors.Default;

            var screen = Cursor.Position;
            Control target = Application.OpenForms[Application.OpenForms.Count - 1];
            while (true)
            {
                var child = target.GetChildAtPoint(target.PointToClient(screen), GetChildAtPointSkip.Invisible);
                if (child == null) break;
                target = child;
            }
            if (ZNK.Helpers.GameData.dropHandlers.TryGetValue(target, out var handler)) handler(source);
        }
    }
}
