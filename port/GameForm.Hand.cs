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
            f_3e = 0;
            f_38 = 1;
            f_3a = 1;
            f_3c = 1;
            f_40 = 0;
            f_44 = 0;
            f_48 = 0;
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
            if (f_46 == 3) { Hide("PoklopSPECIAL"); Show("Tlačítko"); }
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
            if (f_3a == 1) { Say("Za 360Kč sis koupil láhev absinthu"); money -= 360; }
            if (f_3a == 0) Say("Vzal sis pivo");
        }

        void pivo_Click()
        {
            Hide("pivo");
            Show("PivoI");
            if (f_3a == 1) { Say("Za 12Kč sis koupil jedno pifko"); money -= 12; }
            if (f_3a == 0) Say("Vzal sis pivo");
        }

        void whiskey_Click()
        {
            Hide("whiskey");
            Show("whiskeyI");
            if (f_3a == 1) { Say("Za 500 Kč sis koupil lahvinku Whiskey"); money -= 500; }
            if (f_3a == 0) Say("Vzal sis Whiskey");
        }

        // ------------------------------------------------------ the army shop

        void atomovka_Click()
        {
            if (V("pas") && money > 500000) { Hide("atomovka"); Show("atomovkaI"); Say("Koupil sis chlapečka! HAHA, to bude masakr"); money -= 500000; }
            if (money < 500000) Say("Nemáš prachy");
            if (!V("pas")) Say("Nemáš zbrojní pas");
        }

        void Brokovnice_Click()
        {
            if (V("pas") && money > 12000) { Hide("Brokovnice"); Show("BrokovniceI"); Say("Koupil sis brokovnici"); money -= 12000; }
            if (money < 12000) Say("Nemáš prachy");
            if (!V("pas")) Say("Nemáš zbrojní pas");
        }

        void pistole_Click()
        {
            if (V("pas") && money > 6000) { Hide("pistole"); Show("pistoleI"); Say("Koupil sis bouchačku"); money -= 6000; }
            if (money < 6000) Say("Nemáš prachy");
            if (!V("pas")) Say("Nemáš zbrojní pas");
        }

        // ----------------------------------------------------------- the shop

        void Image6_Click()
        {
            if (!V("ProdavačDEATH")) { Show("Obchod"); Hide("obchodIN"); Say("Vyšel jsi před obchod"); }
            if (V("ProdavačDEATH") && f_3c == 0) Say("Vyšel jsi před obchod");
            if (V("ProdavačDEATH") && f_3c == 0) Show("Obchod");
            if (V("ProdavačDEATH") && f_3c == 0) Hide("obchodIN");
            if (V("ProdavačDEATH") && f_3c == 1) Hide("lahev");
            if (V("ProdavačDEATH") && f_3c == 1) Hide("inventář");
            if (V("ProdavačDEATH") && f_3c == 1) Show("policie");
            if (V("ProdavačDEATH") && f_3c == 1) Say("Bohužel kamera nahrála tvůj brutální čin a byl jsi dopaden");
            if (V("ProdavačDEATH") && f_3c == 1) Hide("obchodIN");
        }

        void kameros_Click()
        {
            if (f_3c == 1) Say("Kamera je plně funkčí a natáčí každy tvůj pohyb");
            if (f_3c == 0) Say("Vypadá to, že kamera je po tvém zákroku mimo provoz");
        }

        void kameros_DragDrop(Control src)
        {
            if (src == C("kleštěI") && V("prodavač")) Say("PRODAVAĎ: Vypadni vod tý kamery!");
            if (src == C("kleštěI") && !V("prodavač")) f_3c = 0;
            if (src == C("kleštěI") && !V("prodavač")) Say("Vyřadil jsi kameru z provozu");
        }

        void kleště_Click()
        {
            if (money < 500) Say("Na kleštičky nemáš prachy, vole!");
            if (!V("ProdavačDEATH") && money > 500) Hide("kleště");
            if (!V("ProdavačDEATH") && money > 500) Show("kleštěI");
            if (!V("ProdavačDEATH") && money > 500) Say("Koupil sis pěkné štípačky");
            if (!V("ProdavačDEATH") && money > 500) money -= 500;
            if (V("ProdavačDEATH")) Hide("kleště");
            if (V("ProdavačDEATH")) { Show("kleštěI"); Say("Vzal sis kleště"); }
        }

        void kufr_Click()
        {
            if (money < 13000) Say("Na ten kufr nemáš peníze");
            if (!V("ProdavačDEATH") && money > 13000) Say("Koupil sis super kufřík");
            if (!V("ProdavačDEATH") && money > 13000) money -= 13000;
            if (!V("ProdavačDEATH") && money > 13000) Hide("kufr");     // re-reads money after paying (original quirk)
            if (!V("ProdavačDEATH") && money > 13000) Show("KufrI");
            if (V("ProdavačDEATH")) Hide("kufr");
            if (V("ProdavačDEATH")) Show("KufrI");
            if (V("ProdavačDEATH")) Say("Vzal sis skvělej kufřík");
        }

        void rukavice_Click()
        {
            if (money < 5000) Say("Nemáš tolik peněz");
            if (!V("ProdavačDEATH") && money > 5000) Say("Koupil sis speciální rukavice");
            if (!V("ProdavačDEATH") && money > 5000) money -= 5000;
            if (!V("ProdavačDEATH") && money > 5000) Hide("rukavice");  // re-reads money after paying (original quirk)
            if (!V("ProdavačDEATH") && money > 5000) Show("rukaviceI");
            if (V("ProdavačDEATH")) Hide("rukavice");
            if (V("ProdavačDEATH")) Show("rukaviceI");
            if (V("ProdavačDEATH")) Say("Vzal sis speciální rukavice (o otisky je postaráno, heh)");
        }

        void prodavač_DragDrop(Control src)
        {
            if (src == C("lahev"))
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
            if (src == C("lahev"))
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
            if (src == C("Kámen")) PlaySound("sklo.wav");
            if (src == C("Kámen") && !V("sklo1")) Say("Udělal jsi do výlohy menší díru");
            if (src == C("Kámen") && !V("sklo1")) Show("sklo2");
            if (src == C("Kámen") && !V("sklo1")) Show("ProdavačLOOK");
            if (src == C("Kámen") && !V("sklo1")) Hide("prodavač");
            if (src == C("Kámen") && !V("sklo1")) Hide("Kámen");
            if (src == C("Kámen") && !V("sklo1")) Show("sklo1");
        }

        // ---------------------------------------------------------- the house

        void PenízeI_DragDrop(Control src)
        {
            if (src == C("KufrI")) Say("Naskládal jsi peníze do kufru, bylo tam neuvěřitelných 5.000.000 KČ !");
            if (src == C("KufrI")) money += 5000000;
            if (src == C("KufrI")) Hide("PenízeI");
            if (src == C("KufrI")) Tip("KufrI", "Naplněný kufr");
        }

        void pryč_Click()
        {
            Hide("vchod");
            Show("dům");
            Say("Jsi zase před zdí");
            if (money > 5000000) { Hide("dům"); Show("pláž"); Hide("inventář"); Hide("lahev"); Say("Podařilo se ti uprchnout i stim balíkem co jsi ukradl. Policie na nic nepřišla, mysleli si že to byla hromadná sebevražda. Ty ses odstěhoval do ciziny a pořídil si luxusní sídlo. Teď si žiješ jako král. (KLIKNI NA OBRÁZEK)"); }
            if (f_40 == 2) { Hide("dům"); Hide("pláž"); Show("policie"); Say("Bohužel jsi na místě činu zachoval své otisky"); Hide("inventář"); Hide("lahev"); }
            if (f_42 == 2) { Hide("dům"); Show("policie"); Hide("pláž"); Say("Zřejmě tě v domě natočila nějaká skrytá kamera. Byl jsi dopaden"); Hide("inventář"); Hide("lahev"); }
            if (f_44 == 2) { Say("Sousedé zřejmě slyšeli výstřeli a zavolali policie. Byl jsi usvědčen."); Show("policie"); Hide("dům"); Hide("pláž"); Hide("inventář"); Hide("lahev"); }
        }

        // --------------------------------------------------------- the street

        void tulák_Click()
        {
            Say("TULÁK: Eh...chrocht...nazdar...nemáte nějaký drobný pane? Já už sem na ulici pěknejch pár let! Ani byste nevěřil jakou mám žízeň...uch... už mě to tu pěkně sere. Prosimvás, skočte mi pro lahváče!");
            if (f_48 == 1) Say("TUlÁK: Díky kámo, máš to u mě!");
        }

        void tulákubodán_Click()
        {
            if (f_38 == 0) Say("Už u sebe nic nemá");
            if (f_38 == 1) { Say("Před sebou vidíš tuláka, kterého jsi před chvílí ubodal. Nic u sebe neměl, až na 20Kč, které sis vzal"); money += 20; f_38 = 0; }
        }
    }
}