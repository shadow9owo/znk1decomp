# Život Není Krásný - C# WinForms port

A port of the 2002 freeware adventure **Život Není Krásný** by Martin 'Marty' Pohl,
originally written in Visual Basic 6. The original source was not available, so the
layout, text and logic here were reconstructed from the compiled executable.
All game content (graphics, sounds, text, design) belongs to its original author.

## Build and run

Requires the .NET 8 SDK on Windows.

    dotnet run

## How it is organised

| File | What it is |
|---|---|
| `VbForm.cs` | Rebuilds a VB6 form from `Assets/layout.json` and emulates the VB6 behaviours the game relies on |
| `IntroForm.cs` | Form1: title card and intro |
| `GameForm.cs` | Form2: state variables and helpers |
| `GameForm.Generated.cs` | 89 event handlers translated mechanically from the decompiled code |
| `GameForm.Hand.cs` | 25 event handlers translated by hand |
| `gen.py` | Regenerates the `.cs` files and `Assets/` from `../recovered` and the original exe |
| `*.cs.in` | Hand-written sources; `T("prefix")` is replaced by the full original string |

Every string is read from the original executable by `gen.py`, so the text is the
author's, byte for byte.

## Fidelity notes

The original is a flat list of independent `If ... Then` lines that each re-read the
current state. The port keeps that order exactly, which preserves these quirks:

- Buying the gloves or the suitcase deducts the price first and then re-checks
  that you can afford it, so you only receive the item if you had more than
  twice its price. (Taking them after dealing with the shopkeeper works.)
- After buying a weapon with less than twice its price, the message is
  immediately replaced by "no money".
- Taking absinth for free shows the beer message.

Known differences from the original:

- The window is a borderless 800x600 window centred on screen. The original was
  laid out for a full 800x600 display.
- While dragging an inventory item the port shows a move cursor; VB6 showed an
  outline of the item.
- The timer that refreshes the money display ticks every 50 ms.
- Names of the state flags (`f_38` ... `f_48`) are their offsets in the compiled
  form; their meanings in the comments are inferred from usage.
