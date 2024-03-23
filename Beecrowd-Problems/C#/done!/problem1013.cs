using System;
using System.Globalization;

namespace Program {
    class Program {

        static Tuple<int, int, int> ReadAndParseInput(){
            string line = Console.ReadLine();
            var values = line.Split(' ');
            int a = int.Parse(values[0]);
            int b = int.Parse(values[1]);
            int c = int.Parse(values[2]);
            return Tuple.Create(a, b, c);
        }

        static int MaiorAB(int a, int b) {
            return (a + b + Math.Abs(a - b)) / 2;
        }

        static void Main(string[] args) {

            CultureInfo.CurrentCulture = CultureInfo.InvariantCulture;
            CultureInfo.CurrentUICulture = CultureInfo.InvariantCulture;

            var inputTuple = ReadAndParseInput();
            int a = inputTuple.Item1;
            int b = inputTuple.Item2;
            int c = inputTuple.Item3;

            int maior = MaiorAB(a, b);
            maior = MaiorAB(maior, c);

            Console.WriteLine($"{maior} eh o maior");
        }
    }
}