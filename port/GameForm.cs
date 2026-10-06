using System.Globalization;
using global::System;
using global::System.Collections.Generic;
using global::System.Drawing;
using global::System.IO;
using global::System.Linq;
using global::System.Threading;
using global::System.Threading.Tasks;
using global::System.Windows.Forms;

using static ZNK.Helpers.GameData;
using static ZNK.Helpers.Form.FormHelpers;

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

        bool DoesHomelessMoney;   // 1 = the stabbed tramp still has his 20 Kč
        bool IsBartenderAlive;   // 1 = the waiter is alive (drinks cost money)
        bool HomelessGotBeer;   // 1 = the tramp got his beer
        bool IsLiveLeakCamAlive;   // 1 = the shop camera is working
        bool FlashlightBatteryState;   // 1 = the flashlight has batteries
        bool HouseFingerPrints;   // house door: 1 = opened wearing gloves, 2 = left fingerprints
        bool HouseCamera;   // 2 = filmed by the hidden camera at the house
        bool BedroomKillSilencer;   // shots in the bedroom: 1 = silenced, 2 = loud

        int FalloutEndCivInteractedWith;   // number of cheered-up villains in the secret room (0..3)

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