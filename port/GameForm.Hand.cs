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
using static ZNK.Helpers.misc;

namespace ZNK
{
    // Handlers translated by hand from the decompiled native code, because the
    // decompiler output for them needed interpretation (money arithmetic, sounds,
    // message boxes, compound conditions).
    //
    // The original is a flat list of independent "If ... Then" lines, each of which
    // re-reads the current state. That order is kept exactly, including the cases
    // where it produces the original game's quirks (see README).
    public partial class GameForm
    {
        void Form_Load()
        {
            FlashlightBatteryState = false; //empty
            DoesHomelessMoney = true;
            IsBartenderAlive = true;
            IsLiveLeakCamAlive = true;
            HouseFingerPrints = false;
            BedroomKillSilencer = true;
            HomelessGotBeer = false;
            
            money = 700;
            
            if (bonus)
            {
                money += 5000000;
            }

            timers["Timer1"].Interval = 50;
            timers["Timer1"].Tick += (s, a) => Timer1_Timer();
            timers["Timer1"].Start();
            
            //i hate these ugly lambdas
            Shown += (s, a) => MsgBox("UPOZORNĚNÍ PRO PŘECITLIVĚLÉ POVAHY: Hra obsahuje mnoho brutálního chování a vulgárních slov. Hraním této hry na sebe berete veškerou zodpovědnost, pokud se vám hra nelíbí, tak jí nehrajte. Děkuji, případné dotazy = marty@northcrewz.tk");
        }

        void Timer1_Timer()
        {
            SetText("money", MoneyText());
            trypreparefallouttrigger();
            if (money < 0)
            {
                timers["Timer1"].Stop();
                MsgBox("Bohužel si utratil veškerý peníze, bez peněz ni nedokážeš. Končís");
                End();
            }
        }

        void help_Click()
        {
            MsgBox("Věci které sebereš si ukládají do inventáře, potom je zase můžeš používat systémem Drag and Drop (prostě chytneš myší a pak pustíš <vysvětlivka pro ženy>). Než prvedeš nějakou akci je dobré chvíli ponechat myš nad předmětem, ukáže se vám informace o předmětu (hodí se zejména při zjišťování cen u nakupovaných předmětů). Pokud chceš opustit obrazovku, hledej dveře, pokud tam nejsou zkus okraj obrázku. To je tak vše, hra není těžká na ovládání.");
        }
        void vobraZ_Click()
        {
            MsgBox("RESPECT TO: my homie DruGG'Dee, also DJ Dark Smokemastah, my second homie Sepy, the rest of my homies, Inpharktt Kru, Chraňte Před Dětmi, Czech Hip-Hop, Non-Czech Hip-Hop, just a Hip-Hop, my favourites: Insane Clown Posse; Spoony T and Jimmy Nugz (Entropy); Twiztid; Bloodhound Gang; Wolfpac, my fucking lovely band >-North CrewZ-<, my parents and grandparents and the rest of my family, and of course - ME <written 15.8. 2002>");
        }

        void konec_Click()
        {
            End();
        }
        void absinth_Click()
        {
            Hide("absinth");
            Show("absinthI");
            if (IsBartenderAlive) { 
                Say("Za 360Kč sis koupil láhev absinthu"); 
                money -= 360;
            }
            else
            {
                Say("Vzal sis pivo");
            }
        }

        void pivo_Click()
        {
            Hide("pivo");
            Show("PivoI");
            if (IsBartenderAlive) { 
                Say("Za 12Kč sis koupil jedno pifko");
                money -= 12;
            }
            else
            {
                Say("Vzal sis pivo");
            }
        }

        void whiskey_Click()
        {
            Hide("whiskey");
            Show("whiskeyI");
            if (IsBartenderAlive) { 
                Say("Za 500 Kč sis koupil lahvinku Whiskey"); 
                money -= 500;
            }
            else
            {
                Say("Vzal sis Whiskey");
            }
        }

        void atomovka_Click()
        {
            if (IsOwnVisible("pas") && money > 500000) { 
                Hide("atomovka"); 
                Show("atomovkaI");
                Say("Koupil sis chlapečka! HAHA, to bude masakr"); 
                money -= 500000; 
            }
            else if (money < 500000)
            {
                Say("Nemáš prachy");
            }
            else if (!IsOwnVisible("pas"))
            {
                Say("Nemáš zbrojní pas");
            }
        }

        void Brokovnice_Click()
        {
            if (IsOwnVisible("pas") && money > 12000)
            {
                Hide("Brokovnice");
                Show("BrokovniceI");
                Say("Koupil sis brokovnici");
                money -= 12000;
            }
            else if (money < 12000)
            {
                Say("Nemáš prachy");
            }
            else if (!IsOwnVisible("pas"))
            {
                Say("Nemáš zbrojní pas");
            }
        }

        void pistole_Click()
        {
            if (IsOwnVisible("pas") && money > 6000) { 
                Hide("pistole"); 
                Show("pistoleI"); 
                Say("Koupil sis bouchačku"); 
                money -= 6000; 
            }
            else if (money < 6000)
            {
                Say("Nemáš prachy");
            }
            else if (!IsOwnVisible("pas"))
            {
                Say("Nemáš zbrojní pas");
            }
        }

        void Image6_Click()
        {
            if (!IsOwnVisible("ProdavačDEATH")) { 
                Show("Obchod"); 
                Hide("obchodIN"); 
                Say("Vyšel jsi před obchod");
                return;
            }

            if (IsOwnVisible("ProdavačDEATH"))
            {
                if (IsLiveLeakCamAlive)
                {
                    Hide("lahev");
                    Hide("inventář");
                    Show("policie");
                    Say("Bohužel kamera nahrála tvůj brutální čin a byl jsi dopaden");
                    Hide("obchodIN");
                }
                else
                {
                    Say("Vyšel jsi před obchod");
                    Show("Obchod");
                    Hide("obchodIN");
                }
            }
        }

        void kameros_Click()
        {
            if (IsLiveLeakCamAlive)
            {
                Say("Kamera je plně funkčí a natáčí každy tvůj pohyb");
            }
            else
            {
                Say("Vypadá to, že kamera je po tvém zákroku mimo provoz");
            }
        }

        void kameros_DragDrop(Control src)
        {
            if (src == GetControlSafe("kleštěI") && IsOwnVisible("prodavač"))
            {
                Say("PRODAVAČ: Vypadni vod tý kamery!");
            }
            else if (src == GetControlSafe("kleštěI") && !IsOwnVisible("prodavač"))
            {
                IsLiveLeakCamAlive = false;
                Say("Vyřadil jsi kameru z provozu");
            }
        }

        void kleště_Click()
        {
            if (money < 500 && !IsOwnVisible("ProdavačDEATH"))
            {
                Say("Na kleštičky nemáš prachy, vole!");
                return;
            }

            if (!IsOwnVisible("ProdavačDEATH") && money > 500)
            {
                Hide("kleště");
                Show("kleštěI");
                Say("Koupil sis pěkné štípačky");
                money -= 500;
            }
            else if (IsOwnVisible("ProdavačDEATH"))
            {
                Hide("kleště");
                Show("kleštěI");
                Say("Vzal sis kleště");
            }
        }

        void kufr_Click()
        {
            if (money < 13000 && !IsOwnVisible("ProdavačDEATH"))
            {
                Say("Na ten kufr nemáš peníze");
                return;
            }

            if (!IsOwnVisible("ProdavačDEATH") && money > 13000)
            {
                Say("Koupil sis super kufřík");
                money -= 13000;
                Hide("kufr");
                Show("KufrI");
            }else if (IsOwnVisible("ProdavačDEATH"))
            {
                Hide("kufr");
                Show("KufrI");
                Say("Vzal sis skvělej kufřík");
            }
        }

        void rukavice_Click()
        {
            if (money < 5000 && !IsOwnVisible("ProdavačDEATH"))
            {
                Say("Nemáš tolik peněz");
                return;
            }

            if (!IsOwnVisible("ProdavačDEATH") && money > 5000)
            {
                Say("Koupil sis speciální rukavice");
                money -= 5000;
                Hide("rukavice");
                Show("rukaviceI");
            }else if (IsOwnVisible("ProdavačDEATH"))
            {
                Hide("rukavice");
                Show("rukaviceI");
                Say("Vzal sis speciální rukavice (o otisky je postaráno, heh)");
            }
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
            if (src == GetControlSafe("Kámen"))
            {
                PlaySound("sklo.wav");
                Say("Udělal jsi do výlohy menší díru");
                Show("sklo2");
                Show("ProdavačLOOK");
                Hide("prodavač");
                Hide("Kámen");
                Show("sklo1");
            }
        }

        void PenízeI_DragDrop(Control src)
        {
            if (src == GetControlSafe("KufrI"))
            {
                Say("Naskládal jsi peníze do kufru, bylo tam neuvěřitelných 5.000.000 KČ !");
                money += 5000000;
                Hide("PenízeI");
                Tip("KufrI", "Naplněný kufr");
            }
        }

        void pryč_Click()
        {
            Hide("vchod");
            Show("dům");
            Say("Jsi zase před zdí");
            if (money > 5000000) { 
                Hide("dům");
                Show("pláž"); 
                Hide("inventář"); 
                Hide("lahev");
                Say("Podařilo se ti uprchnout i stim balíkem co jsi ukradl. Policie na nic nepřišla, mysleli si že to byla hromadná sebevražda. Ty ses odstěhoval do ciziny a pořídil si luxusní sídlo. Teď si žiješ jako král. (KLIKNI NA OBRÁZEK)"); 
            }
            if (HouseFingerPrints) {
                Hide("dům");
                Hide("pláž");
                Show("policie");
                Say("Bohužel jsi na místě činu zachoval své otisky"); 
                Hide("inventář");
                Hide("lahev");
            }
            if (HouseCamera) { 
                Hide("dům"); 
                Show("policie"); 
                Hide("pláž");
                Say("Zřejmě tě v domě natočila nějaká skrytá kamera. Byl jsi dopaden");
                Hide("inventář");
                Hide("lahev");
            }
            if (!BedroomKillSilencer) { 
                Say("Sousedé zřejmě slyšeli výstřeli a zavolali policie. Byl jsi usvědčen."); 
                Show("policie");
                Hide("dům"); 
                Hide("pláž");
                Hide("inventář");
                Hide("lahev"); 
            }
        }

        void tulák_Click()
        {
            Say("TULÁK: Eh...chrocht...nazdar...nemáte nějaký drobný pane? Já už sem na ulici pěknejch pár let! Ani byste nevěřil jakou mám žízeň...uch... už mě to tu pěkně sere. Prosimvás, skočte mi pro lahváče!");
            if (HomelessGotBeer)
            {
                Say("TUlÁK: Díky kámo, máš to u mě!");
            }
        }

        void tulákubodán_Click()
        {
            if (!DoesHomelessMoney)
            {
                Say("Už u sebe nic nemá");
            }
            else if (DoesHomelessMoney)
            {
                Say("Před sebou vidíš tuláka, kterého jsi před chvílí ubodal. Nic u sebe neměl, až na 20Kč, které sis vzal");
                money += 20;
                DoesHomelessMoney = false;
            }
        }
    }
}