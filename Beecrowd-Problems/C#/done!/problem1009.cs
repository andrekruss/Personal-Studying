using System;
using System.Globalization;

class URI
{

    static void Main(string[] args)
    {
        CultureInfo.CurrentCulture = CultureInfo.InvariantCulture;
        CultureInfo.CurrentUICulture = CultureInfo.InvariantCulture;
        string name = Console.ReadLine();
        double salary = double.Parse(Console.ReadLine());
        double sales = double.Parse(Console.ReadLine());

        double total = salary + (0.15 * sales);
        Console.WriteLine($"TOTAL = R$ {total:F2}");
    }
}
