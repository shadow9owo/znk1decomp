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

    // Handlers translated by hand from the decompiled native code, because the
    // decompiler output for them needed interpretation (money arithmetic, sounds,
    // message boxes, compound conditions).
    //
    // The original is a flat list of independent "If ... Then" lines, each of which
    // re-reads the current state. That order is kept exactly, including the cases
    // where it produces the original game's quirks (see README).
    sealed partial class GameForm
    {
        void Form_Load()
        {
            FlashlightBatteryState = 0;
            DoesHomelessMoney = 1;
            IsBartenderAlive = 1;
            IsLiveLeakCamAlive = 1;
            HouseFingerPrints = 0;
            BedroomKillSilencer = 0;
            HomelessGotBeer = 0;
            money = 700;
            if (bonus == 1) money += 5000000;
            timers["Timer1"].Interval = 50;      // original: enabled with the minimum interval
            timers["Timer1"].Tick += (s, a) => Timer1_Timer();
            timers["Timer1"].Start();
            Shown += (s, a) => MsgBox("UPOZORNĚNÍ PRO PŘECITLIVĚLÉ POVAHY: Hra obsahuje mnoho brutálního chování a vulgárních slov. Hraním této hry na sebe berete veškerou zodpovědnost, pokud se vám hra nelíbí, tak jí nehrajte. Děkuji, případné dotazy = marty@northcrewz.tk");
        }

        void Timer1_Timer()
        {
            SetText("money", MoneyText());
            if (FalloutEndCivInteractedWith == 3) { Hide("PoklopSPECIAL"); Show("Tlačítko"); }
            if (money < 0)
            {
                timers["Timer1"].Stop();
                MsgBox("Bohužel si utratil veškerý peníze, bez peněz ni nedokážeš. Končís");
                End();
            }
        }

        void help_Click() => MsgBox("Věci které sebereš si ukládají do inventáře, potom je zase můžeš používat systémem Drag and Drop (prostě chytneš myší a pak pustíš <vysvětlivka pro ženy>). Než prvedeš nějakou akci je dobré chvíli ponechat myš nad předmětem, ukáže se vám informace o předmětu (hodí se zejména při zjišťování cen u nakupovaných předmětů). Pokud chceš opustit obrazovku, hledej dveře, pokud tam nejsou zkus okraj obrázku. To je tak vše, hra není těžká na ovládání.");
        void vobraZ_Click() => MsgBox("RESPECT TO: my homie DruGG'Dee, also DJ Dark Smokemastah, my second homie Sepy, the rest of my homies, Inpharktt Kru, Chraňte Před Dětmi, Czech Hip-Hop, Non-Czech Hip-Hop, just a Hip-Hop, my favourites: Insane Clown Posse; Spoony T and Jimmy Nugz (Entropy); Twiztid; Bloodhound Gang; Wolfpac, my fucking lovely band >-North CrewZ-<, my parents and grandparents and the rest of my family, and of course - ME <written 15.8. 2002>");
        void konec_Click() => End();
        void Label1_Click() => End();

        // ------------------------------------------------------------ the pub

        void absinth_Click()
        {
            Hide("absinth");
            Show("absinthI");
            if (IsBartenderAlive == 1) { Say("Za 360Kč sis koupil láhev absinthu"); money -= 360; }
            if (IsBartenderAlive == 0) Say("Vzal sis pivo");
        }

        void pivo_Click()
        {
            Hide("pivo");
            Show("PivoI");
            if (IsBartenderAlive == 1) { Say("Za 12Kč sis koupil jedno pifko"); money -= 12; }
            if (IsBartenderAlive == 0) Say("Vzal sis pivo");
        }

        void whiskey_Click()
        {
            Hide("whiskey");
            Show("whiskeyI");
            if (IsBartenderAlive == 1) { Say("Za 500 Kč sis koupil lahvinku Whiskey"); money -= 500; }
            if (IsBartenderAlive == 0) Say("Vzal sis Whiskey");
        }

        // ------------------------------------------------------ the army shop

        void atomovka_Click()
        {
            if (IsOwnVisible("pas") && money > 500000) { Hide("atomovka"); Show("atomovkaI"); Say("Koupil sis chlapečka! HAHA, to bude masakr"); money -= 500000; }
            if (money < 500000) Say("Nemáš prachy");
            if (!IsOwnVisible("pas")) Say("Nemáš zbrojní pas");
        }

        void Brokovnice_Click()
        {
            if (IsOwnVisible("pas") && money > 12000) { Hide("Brokovnice"); Show("BrokovniceI"); Say("Koupil sis brokovnici"); money -= 12000; }
            if (money < 12000) Say("Nemáš prachy");
            if (!IsOwnVisible("pas")) Say("Nemáš zbrojní pas");
        }

        void pistole_Click()
        {
            if (IsOwnVisible("pas") && money > 6000) { Hide("pistole"); Show("pistoleI"); Say("Koupil sis bouchačku"); money -= 6000; }
            if (money < 6000) Say("Nemáš prachy");
            if (!IsOwnVisible("pas")) Say("Nemáš zbrojní pas");
        }

        // ----------------------------------------------------------- the shop

        void Image6_Click()
        {
            if (!IsOwnVisible("ProdavačDEATH")) { Show("Obchod"); Hide("obchodIN"); Say("Vyšel jsi před obchod"); }
            if (IsOwnVisible("ProdavačDEATH") && IsLiveLeakCamAlive == 0) Say("Vyšel jsi před obchod");
            if (IsOwnVisible("ProdavačDEATH") && IsLiveLeakCamAlive == 0) Show("Obchod");
            if (IsOwnVisible("ProdavačDEATH") && IsLiveLeakCamAlive == 0) Hide("obchodIN");
            if (IsOwnVisible("ProdavačDEATH") && IsLiveLeakCamAlive == 1) Hide("lahev");
            if (IsOwnVisible("ProdavačDEATH") && IsLiveLeakCamAlive == 1) Hide("inventář");
            if (IsOwnVisible("ProdavačDEATH") && IsLiveLeakCamAlive == 1) Show("policie");
            if (IsOwnVisible("ProdavačDEATH") && IsLiveLeakCamAlive == 1) Say("Bohužel kamera nahrála tvůj brutální čin a byl jsi dopaden");
            if (IsOwnVisible("ProdavačDEATH") && IsLiveLeakCamAlive == 1) Hide("obchodIN");
        }

        void kameros_Click()
        {
            if (IsLiveLeakCamAlive == 1) Say("Kamera je plně funkčí a natáčí každy tvůj pohyb");
            if (IsLiveLeakCamAlive == 0) Say("Vypadá to, že kamera je po tvém zákroku mimo provoz");
        }

        void kameros_DragDrop(Control src)
        {
            if (src == GetControlSafe("kleštěI") && IsOwnVisible("prodavač")) Say("PRODAVAĎ: Vypadni vod tý kamery!");
            if (src == GetControlSafe("kleštěI") && !IsOwnVisible("prodavač")) IsLiveLeakCamAlive = 0;
            if (src == GetControlSafe("kleštěI") && !IsOwnVisible("prodavač")) Say("Vyřadil jsi kameru z provozu");
        }

        void kleště_Click()
        {
            if (money < 500) Say("Na kleštičky nemáš prachy, vole!");
            if (!IsOwnVisible("ProdavačDEATH") && money > 500) Hide("kleště");
            if (!IsOwnVisible("ProdavačDEATH") && money > 500) Show("kleštěI");
            if (!IsOwnVisible("ProdavačDEATH") && money > 500) Say("Koupil sis pěkné štípačky");
            if (!IsOwnVisible("ProdavačDEATH") && money > 500) money -= 500;
            if (IsOwnVisible("ProdavačDEATH")) Hide("kleště");
            if (IsOwnVisible("ProdavačDEATH")) { Show("kleštěI"); Say("Vzal sis kleště"); }
        }

        void kufr_Click()
        {
            if (money < 13000) Say("Na ten kufr nemáš peníze");
            if (!IsOwnVisible("ProdavačDEATH") && money > 13000) Say("Koupil sis super kufřík");
            if (!IsOwnVisible("ProdavačDEATH") && money > 13000) money -= 13000;
            if (!IsOwnVisible("ProdavačDEATH") && money > 13000) Hide("kufr");     // re-reads money after paying (original quirk)
            if (!IsOwnVisible("ProdavačDEATH") && money > 13000) Show("KufrI");
            if (IsOwnVisible("ProdavačDEATH")) Hide("kufr");
            if (IsOwnVisible("ProdavačDEATH")) Show("KufrI");
            if (IsOwnVisible("ProdavačDEATH")) Say("Vzal sis skvělej kufřík");
        }

        void rukavice_Click()
        {
            if (money < 5000) Say("Nemáš tolik peněz");
            if (!IsOwnVisible("ProdavačDEATH") && money > 5000) Say("Koupil sis speciální rukavice");
            if (!IsOwnVisible("ProdavačDEATH") && money > 5000) money -= 5000;
            if (!IsOwnVisible("ProdavačDEATH") && money > 5000) Hide("rukavice");  // re-reads money after paying (original quirk)
            if (!IsOwnVisible("ProdavačDEATH") && money > 5000) Show("rukaviceI");
            if (IsOwnVisible("ProdavačDEATH")) Hide("rukavice");
            if (IsOwnVisible("ProdavačDEATH")) Show("rukaviceI");
            if (IsOwnVisible("ProdavačDEATH")) Say("Vzal sis speciální rukavice (o otisky je postaráno, heh)");
        }

        void prodavač_DragDrop(Control src)
        {
            if (src == GetControlSafe("lahev"))
            {
                PlaySound("bum.wav");
                Hide("prodavač");
                Show("ProdavačDEATH");
                Say("Zabil jsi ho a našel jsi u něj 13.000Kč");
                money += 13000;
                Hide("kameros");
                Tip("kleště", "Seber kleště");
                Tip("kufr", "Seber kufr");
                Tip("rukavice", "Seber rukavice");
            }
        }

        void ProdavačLOOK_DragDrop(Control src)
        {
            if (src == GetControlSafe("lahev"))
            {
                Hide("ProdavačLOOK");
                Show("ProdavačDEATH");
                PlaySound("bum.wav");
                Say("Zabil jsi ho a našel jsi u něj 13.000Kč");
                money += 13000;
                Hide("kameros");
                Tip("kleště", "Seber kleště");
                Tip("kufr", "Seber kufr");
                Tip("rukavice", "Seber rukavice");
            }
        }

        void výloha_DragDrop(Control src)
        {
            if (src == GetControlSafe("Kámen")) PlaySound("sklo.wav");
            if (src == GetControlSafe("Kámen") && !IsOwnVisible("sklo1")) Say("Udělal jsi do výlohy menší díru");
            if (src == GetControlSafe("Kámen") && !IsOwnVisible("sklo1")) Show("sklo2");
            if (src == GetControlSafe("Kámen") && !IsOwnVisible("sklo1")) Show("ProdavačLOOK");
            if (src == GetControlSafe("Kámen") && !IsOwnVisible("sklo1")) Hide("prodavač");
            if (src == GetControlSafe("Kámen") && !IsOwnVisible("sklo1")) Hide("Kámen");
            if (src == GetControlSafe("Kámen") && !IsOwnVisible("sklo1")) Show("sklo1");
        }

        // ---------------------------------------------------------- the house

        void PenízeI_DragDrop(Control src)
        {
            if (src == GetControlSafe("KufrI")) Say("Naskládal jsi peníze do kufru, bylo tam neuvěřitelných 5.000.000 KČ !");
            if (src == GetControlSafe("KufrI")) money += 5000000;
            if (src == GetControlSafe("KufrI")) Hide("PenízeI");
            if (src == GetControlSafe("KufrI")) Tip("KufrI", "Naplněný kufr");
        }

        void pryč_Click()
        {
            Hide("vchod");
            Show("dům");
            Say("Jsi zase před zdí");
            if (money > 5000000) { Hide("dům"); Show("pláž"); Hide("inventář"); Hide("lahev"); Say("Podařilo se ti uprchnout i stim balíkem co jsi ukradl. Policie na nic nepřišla, mysleli si že to byla hromadná sebevražda. Ty ses odstěhoval do ciziny a pořídil si luxusní sídlo. Teď si žiješ jako král. (KLIKNI NA OBRÁZEK)"); }
            if (HouseFingerPrints == 2) { Hide("dům"); Hide("pláž"); Show("policie"); Say("Bohužel jsi na místě činu zachoval své otisky"); Hide("inventář"); Hide("lahev"); }
            if (HouseCamera == 2) { Hide("dům"); Show("policie"); Hide("pláž"); Say("Zřejmě tě v domě natočila nějaká skrytá kamera. Byl jsi dopaden"); Hide("inventář"); Hide("lahev"); }
            if (BedroomKillSilencer == 2) { Say("Sousedé zřejmě slyšeli výstřeli a zavolali policie. Byl jsi usvědčen."); Show("policie"); Hide("dům"); Hide("pláž"); Hide("inventář"); Hide("lahev"); }
        }

        // --------------------------------------------------------- the street

        void tulák_Click()
        {
            Say("TULÁK: Eh...chrocht...nazdar...nemáte nějaký drobný pane? Já už sem na ulici pěknejch pár let! Ani byste nevěřil jakou mám žízeň...uch... už mě to tu pěkně sere. Prosimvás, skočte mi pro lahváče!");
            if (HomelessGotBeer == 1) Say("TUlÁK: Díky kámo, máš to u mě!");
        }

        void tulákubodán_Click()
        {
            if (DoesHomelessMoney == 0) Say("Už u sebe nic nemá");
            if (DoesHomelessMoney == 1) { Say("Před sebou vidíš tuláka, kterého jsi před chvílí ubodal. Nic u sebe neměl, až na 20Kč, které sis vzal"); money += 20; DoesHomelessMoney = 0; }
        }
    }
}