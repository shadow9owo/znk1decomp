using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using static ZNK.Helpers.GameData;

namespace ZNK.Helpers
{
    public class Loaders
    {
        public static Image LoadImage(string file)
        {
            if (file == null) return null;
            if (images.TryGetValue(file, out var img)) return img;
            var path = Path.Combine(AssetDir, "images", file.Replace('/', Path.DirectorySeparatorChar));
            if (!File.Exists(path)) return null;
            // Load through a copy so the file is not kept locked.
            using (var tmp = Image.FromStream(new MemoryStream(File.ReadAllBytes(path))))
            {
                return images[file] = new Bitmap(tmp);
            }
        }

        public static Cursor LoadCursor(string file)
        {
            if (file == null) return null;
            if (cursors.TryGetValue(file, out var cur)) return cur;
            try
            {
                var path = Path.Combine(AssetDir, "images", file.Replace('/', Path.DirectorySeparatorChar));
                var icon = new Icon(path, 32, 32);
                cursorIcons.Add(icon);
                return cursors[file] = new Cursor(icon.Handle);
            }
            catch { return cursors[file] = Cursors.Hand; }
        }
    }
}
