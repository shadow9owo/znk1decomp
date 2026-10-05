namespace ZNK;

// Život Není Krásný - C# WinForms port.
// Original game (c) 2002 Martin 'Marty' Pohl, written in Visual Basic 6.
// Layout, text and logic were reconstructed from the original executable.
static class Program
{
    public const string Title = "Život Není Krásný";

    [STAThread]
    static void Main()
    {
        ApplicationConfiguration.Initialize();
        Application.Run(new IntroForm());
    }
}
