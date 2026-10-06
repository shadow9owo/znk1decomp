using System;

namespace ZNK.Helpers
{
    public class MathHelpers
    {
        // Math.Clamp does not exist on .NET Framework.
        public static int Clamp(int value, int min, int max)
        {
            if (value < min)
            {
                return min;
            }
            if (value > max)
            {
                return max;
            }
            return value;
        }
    }
}
