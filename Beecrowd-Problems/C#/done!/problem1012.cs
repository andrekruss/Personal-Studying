using System;
using System.Globalization;

namespace Program {
    class Program {

        private static Tuple<double, double, double> ReadAndParseInput() {
            string line = Console.ReadLine();
            var values = line.Split(' ');
            double a = double.Parse(values[0], CultureInfo.InvariantCulture);
            double b = double.Parse(values[1], CultureInfo.InvariantCulture);
            double c = double.Parse(values[2], CultureInfo.InvariantCulture);
            return Tuple.Create(a, b, c);
        }

        static void Main(string[] args) {

            CultureInfo.CurrentCulture = CultureInfo.InvariantCulture;
            CultureInfo.CurrentUICulture = CultureInfo.InvariantCulture;

            var valuesTuple = ReadAndParseInput();
            double a = valuesTuple.Item1;
            double b = valuesTuple.Item2;
            double c = valuesTuple.Item3;

            double triangleArea = a * c / 2;
            double circleArea = c * c * 3.14159;
            double trapeziumArea = (a + b) * c / 2;
            double squareArea = b * b;
            double rectangleArea = a * b;

            Console.WriteLine($"TRIANGULO: {triangleArea:F3}");
            Console.WriteLine($"CIRCULO: {circleArea:F3}");
            Console.WriteLine($"TRAPEZIO: {trapeziumArea:F3}");
            Console.WriteLine($"QUADRADO: {squareArea:F3}");
            Console.WriteLine($"RETANGULO: {rectangleArea:F3}");
        }
    }
}