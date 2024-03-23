using System;
using System.Globalization;

namespace Program{

    class Program{
        static void Main(string[] args){
            CultureInfo.CurrentCulture = CultureInfo.InvariantCulture;
            CultureInfo.CurrentUICulture = CultureInfo.InvariantCulture;
            double pi = 3.14159;
            double radius;
            bool isParseSuccessful = double.TryParse(Console.ReadLine(), out radius);

            if (isParseSuccessful) {
                double volume = (4.0 / 3) * pi * radius * radius * radius;
                Console.WriteLine($"VOLUME = {volume:F3}");
            }
            else {
                Console.WriteLine("Error while parsing input.");
            }
        }
    }
}