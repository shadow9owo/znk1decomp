using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ZNK.Helpers
{
    public class GameData
    {
        public static readonly string AssetDir = Path.Combine(AppContext.BaseDirectory, "Assets");

        public static readonly Dictionary<string, Control> byName = new Dictionary<string, Control>(StringComparer.OrdinalIgnoreCase);
        public static readonly Dictionary<Control, bool> ownVisible = new Dictionary<Control, bool>();
        public static readonly Dictionary<Control, Action<Control>> dropHandlers = new Dictionary<Control, Action<Control>>();
        public static readonly HashSet<Control> autoDrag = new HashSet<Control>();
        public static readonly Dictionary<string, Cursor> cursors = new Dictionary<string, Cursor>();
        public static readonly List<Icon> cursorIcons = new List<Icon>();
        public static readonly Dictionary<string, Image> images = new Dictionary<string, Image>();
        public static readonly ToolTip tips = new ToolTip();
        public static readonly Dictionary<string, System.Windows.Forms.Timer> timers = new Dictionary<string, System.Windows.Forms.Timer>();
        public static Control dragging;
    }
}
