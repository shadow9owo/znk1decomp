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

    // Život Není Krásný - C# WinForms port.
    // Original game (c) 2002 Martin 'Marty' Pohl, written in Visual Basic 6.
    // Layout, text and logic were reconstructed from the original executable.
    static class Program
    {
        public const string Title = "Život Není Krásný";

        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new IntroForm());
        }
    }
}