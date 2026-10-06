using System.Globalization;
using global::System;
using global::System.Collections.Generic;
using global::System.Drawing;
using global::System.IO;
using global::System.Linq;
using global::System.Threading;
using global::System.Threading.Tasks;
using global::System.Windows.Forms;

namespace ZNK
{

    /// <summary>
    /// Form2 of the original: the whole game. Every room is a picture box that is
    /// shown or hidden, the inventory is a column of draggable pictures, and all
    /// state is the money plus the handful of flags below.
    /// </summary>
    [System.ComponentModel.DesignerCategory("Code")]   // built at runtime from layout.json; nothing for the VS designer to edit
    sealed partial class GameForm : VbForm
    {
        readonly int bonus;

        double money;
        string snd = "";

        // Form-level variables of the original, named by their offset in the
        // compiled form object. Meanings are inferred from how they are used.
        int f_38;   // 1 = the stabbed tramp still has his 20 Kč
        int f_3a;   // 1 = the waiter is alive (drinks cost money)
        int f_3c;   // 1 = the shop camera is working
        int f_3e;   // 1 = the flashlight has batteries
        int f_40;   // house door: 1 = opened wearing gloves, 2 = left fingerprints
        int f_42;   // 2 = filmed by the hidden camera at the house
        int f_44;   // shots in the bedroom: 1 = silenced, 2 = loud
        int f_46;   // number of cheered-up villains in the secret room (0..3)
        int f_48;   // 1 = the tramp got his beer

        public GameForm(int bonus)
        {
            this.bonus = bonus;
            Build("Form2");
            WireEvents();
            Form_Load();
        }

        /// <summary>Sets the description label at the bottom of the screen.</summary>
        void Say(string text) => SetText("text", text);

        string MoneyText() => money.ToString("0.##", CultureInfo.CurrentCulture);
    }
}