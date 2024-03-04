from math import sqrt

a, b, c = map(lambda x: float(x), input().split(" "))

if (a == 0):
    print("Impossivel calcular")
else:
    delta = (b * b) - (4 * a * c)
    
    if (delta < 0):
        print("Impossivel calcular")
    else:
        r1 = (-b + sqrt(delta)) / (2 * a)
        r2 = (-b - sqrt(delta)) / (2 * a)
        print("R1 = {:.5f}".format(r1))
        print("R2 = {:.5f}".format(r2))

