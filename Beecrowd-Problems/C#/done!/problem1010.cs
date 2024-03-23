using System;
using System.Globalization;

namespace Program {

    class Product {

        public Product(int code, int numberOfUnits, double price) {
            Code = code;
            NumberOfUnits = numberOfUnits;
            Price = price;
        }

        public int Code { get; set; }
        public int NumberOfUnits{ get; set; }
        public double Price { get; set; }

        public double Total() {
            return NumberOfUnits * Price;
        }
    }

    class Program {
        static void Main(string[] args) {

            CultureInfo.CurrentCulture = CultureInfo.InvariantCulture;
            CultureInfo.CurrentUICulture = CultureInfo.InvariantCulture;

            string line1 = Console.ReadLine();
            string line2 = Console.ReadLine();

            var values1 = line1.Split(' ');
            var values2 = line2.Split(' ');

            int code1 = int.Parse(values1[0]);
            int numberOfUnits1 = int.Parse(values1[1]);
            double price1 = double.Parse(values1[2]);

            int code2 = int.Parse(values2[0]);
            int numberOfUnits2 = int.Parse(values2[1]);
            double price2 = double.Parse(values2[2]);

            Product p1 = new Product(code1, numberOfUnits1, price1);
            Product p2 = new Product(code2, numberOfUnits2, price2);

            double total = p1.Total() + p2.Total();

            Console.WriteLine($"VALOR A PAGAR: R$ {total:F2}");
        }
    }
}