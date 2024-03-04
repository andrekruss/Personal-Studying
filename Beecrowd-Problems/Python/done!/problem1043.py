a, b, c = map(lambda x : float(x), input().split(" "))

if (a < b + c and b < a + c and c < a + b):
    print("Perimetro = {:.1f}".format(a + b +c))
else:
    area = ((a + b) * c) / 2
    print("Area = {:.1f}".format(area))
