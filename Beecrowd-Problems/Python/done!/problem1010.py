class Product:

    def __init__(self, code, units, unit_price):
        self.code = code
        self.units = units
        self.unit_price = unit_price

    def total(self):
        return self.units * self.unit_price


in1 = input().split(" ")
p1 = Product(int(in1[0]), int(in1[1]), float(in1[2]))
in2 = input().split(" ")
p2 = Product(int(in2[0]), int(in2[1]), float(in2[2]))

payment = p1.total() + p2.total()

print("VALOR A PAGAR: R$ {:.2f}".format(payment))



