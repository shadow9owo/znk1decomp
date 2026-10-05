# Život Není Krásný, but in C#

A port of the 2002 freeware adventure by Martin 'Marty' Pohl. The VB6 source is
long gone, so the layout, text and logic were dug back out of the compiled exe.
The game itself is all Marty's.

## Running it

Windows + .NET 8 SDK:

    dotnet run

## Files

- `VbForm.cs` - rebuilds a VB6 form from `Assets/layout.json`
- `IntroForm.cs` - the intro
- `GameForm*.cs` - the game (89 handlers generated, 25 by hand)
- `gen.py` - regenerates the sources and `Assets/` from the original exe

## Notes

- Faithful, bugs included: the gloves and suitcase take your money and only
  hand over the item if you had more than double the price.
- Runs in a borderless 800x600 window. It was 2002.
