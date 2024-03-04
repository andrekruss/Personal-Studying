using System;
using System.Globalization;

class URI
{

    static void Main(string[] args)
    {
        CultureInfo.CurrentCulture = CultureInfo.InvariantCulture;
        CultureInfo.CurrentUICulture = CultureInfo.InvariantCulture;
        double weightA = 3.5d, weightB = 7.5d;
        double a = double.Parse(Console.ReadLine());
        double b = double.Parse(Console.ReadLine());
        double average = (weightA * a + weightB * b) / (weightA + weightB);
        Console.WriteLine($"MEDIA = {average:F5}");
    }
}
