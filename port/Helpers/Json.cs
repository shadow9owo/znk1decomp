using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace ZNK.Helpers
{
    public class Json
    {
        public static string Str(JsonElement e, string key)
        {
            if (!e.TryGetProperty(key, out var v))
            {
                return null; // no such key
            }

            if (v.ValueKind == JsonValueKind.String)
            {
                return v.GetString();
            }
            return null;
        }

        public static int Int(JsonElement e, string key)
        {
            e.TryGetProperty(key, out var v);

            try
            {
                v.GetInt32();
            }
            catch (Exception)
            {
                //failed
                return 0;
            }

            if (v.ValueKind == JsonValueKind.Number)
            {
                return v.GetInt32();
            }
            return 0;
        }

        public static Color OleColor(JsonElement e, string key, Color fallback)
        {
            e.TryGetProperty(key, out var v);
            try
            {
                if (v.ValueKind != JsonValueKind.Number)
                {
                    return fallback;
                }
            }
            catch
            {
                return fallback; //whatever failed ig
            }
            return ColorTranslator.FromOle(unchecked((int)v.GetUInt32()));
        }
    }
}
