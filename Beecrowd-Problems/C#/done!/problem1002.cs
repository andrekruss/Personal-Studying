using System;
using System.Globalization;

class URI
{

    static void Main(string[] args)
    {
        double pi = 3.14159d;
        double R = double.Parse(Console.ReadLine());
        double A = pi * R * R;
        CultureInfo.CurrentCulture = CultureInfo.InvariantCulture;
        CultureInfo.CurrentUICulture = CultureInfo.InvariantCulture;
        Console.WriteLine($"A={A:F4}");
    }
}
