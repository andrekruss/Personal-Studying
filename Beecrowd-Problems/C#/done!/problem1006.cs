using System;
using System.Globalization;

class URI
{

    static void Main(string[] args)
    {
        CultureInfo.CurrentCulture = CultureInfo.InvariantCulture;
        CultureInfo.CurrentUICulture = CultureInfo.InvariantCulture;
        double weightA = 2d, weightB = 3d, weightC = 5d;
        double A = double.Parse(Console.ReadLine());
        double B = double.Parse(Console.ReadLine());
        double C = double.Parse(Console.ReadLine());
        double average = (weightA * A + weightB * B + weightC * C) / (weightA + weightB + weightC);
        Console.WriteLine($"MEDIA = {average:F1}");
    }
}
