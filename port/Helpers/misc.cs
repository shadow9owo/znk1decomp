using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using static ZNK.Helpers.GameData;
using static ZNK.Helpers.Form.FormHelpers;
using System.Windows.Forms;

namespace ZNK.Helpers
{
    public class misc
    {
        public static void TryPrepareFalloutTrigger()
        {
            if (GameForm.Current.FalloutEndCivInteractedWith == 3)
            {
                Hide("PoklopSPECIAL");
                Show("Tlačítko");
            }
            return;
        }
    }
}
