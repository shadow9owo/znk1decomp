using global::System;
using global::System.Collections.Generic;
using global::System.Drawing;
using global::System.IO;
using global::System.Linq;
using global::System.Threading;
using global::System.Threading.Tasks;
using global::System.Windows.Forms;

using static ZNK.Helpers.GameData;
using static ZNK.Helpers.Loaders;
using static ZNK.Helpers.Form.FormHelpers;

namespace ZNK
{
    [System.ComponentModel.DesignerCategory("Code")]
    sealed class IntroForm : VbForm
    {
        bool bonus;
        GameForm game;

        public IntroForm()
        {
            Build("Form1");
            Form_Load();
            OnClick("dál", dál_Click);
            OnClick("přeskočit", přeskočit_Click);
            OnClick("popis", popis_Click);
            OnClick("začátek", začátek_Click);
            OnClick("Image1", Image1_Click);
            OnClick("okno", Okno_Click);
        }

        void Form_Load() { 
            bonus = false;
        }

        void StartGame()
        {
            if (game == null)
            {
                game = new GameForm(bonus);
                game.FormClosed += (s, a) => Application.Exit();
            }
            game.Show();
            Hide();
        }

        void dál_Click()
        {
            if (GetText("dál") == "Pokračuj")
            {
                SetText("text", ">chvilku strpění<");
            }

            if (GetText("dál") == "Pokračuj") 
            { 
                StartGame();
                return;        
            }

            if (IsOwnVisible("Picture3"))
            {
                Show("Picture4");
                SetText("text", "A tohle seš ty, troska. Dneska ses rozhodl že s tím něco uděláš, ruplo ti v bedně a řekl sis, že se podíváš na tu šéfovu vilu a pořádně ho zmasakruješ, slyšel si že je prý ukrutně bohatý (takže ho i okradeš). Chtělo by to nějakou zbraň a samozřejmě se tam musíš nějak dostat...");
                SetText("dál", "Pokračuj");
                Hide("přeskočit");
                Hide("Picture3");
            }
            if (IsOwnVisible("Picture2"))
            {
                Show("Picture3");
                SetText("text", "Zde, v tom luxusním sídle si ten tvůj bejvalej šéfik žije. I s tou tvojí bejvalou holkou.");
                Hide("Picture2");
            }
            if (IsOwnVisible("Picture1"))
            {
                Show("Picture2");
                SetText("text", "A tohle je tvůj bejvalej šéf. Pěknej grázl, dneska tě vykopnul a to si pro něj makal 15 let. A aby toho nebylo málo, před dvěma tejdnama k němu odešla tvoje holka...");
                Hide("Picture1");
            }
        }

        void přeskočit_Click()
        {
            SetText("text", ">chvilku strpění<");
            StartGame();
        }

        void popis_Click()
        {
            TitleClick();
        }
        void začátek_Click()
        {
            TitleClick();
        }

        void TitleClick()
        {
            if (GetText("popis") == "Život Není Krásný")
            {
                Hide("začátek");
            }

            if (GetText("popis") == "Martin 'Marty' Pohl uwádí hru")
            {
                SetText("popis", "Život Není Krásný");
            }
        }

        void Image1_Click()
        {
            SetText("text", ">FUCK OFF<");
        }

        void Okno_Click()
        {
            bonus = true;
            SetText("text", ">BONUS MONEY<");
        }
    }
}