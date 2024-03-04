using System;
using System.Globalization;
class URI
{

    static void Main(string[] args)
    {
        CultureInfo.CurrentCulture = CultureInfo.InvariantCulture;
        CultureInfo.CurrentUICulture = CultureInfo.InvariantCulture;
        int employeeNumber = int.Parse(Console.ReadLine());
        int amountPerHour = int.Parse(Console.ReadLine());
        double workedHours = double.Parse(Console.ReadLine());

        double salary = amountPerHour * workedHours;

        Console.WriteLine($"NUMBER = {employeeNumber}");
        Console.WriteLine($"SALARY = U$ {salary:F2}");
    }
}
