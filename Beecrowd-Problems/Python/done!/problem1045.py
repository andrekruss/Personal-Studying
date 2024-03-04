a, b, c = map(lambda x : float(x), input().split(" "))

if (b > a and b > c):
    temp = b
    b = a
    a = temp
elif (c > a and c > b):
    temp = c
    c = a
    a = temp

if (a >= b + c):
    print("NAO FORMA TRIANGULO")
else:
    a_squared = a**2
    b_squared = b**2
    c_squared = c**2

    if (a_squared == b_squared + c_squared):
        print("TRIANGULO RETANGULO")
    elif (a_squared > b_squared + c_squared):
        print("TRIANGULO OBTUSANGULO")
    elif (a_squared < b_squared + c_squared):
        print("TRIANGULO ACUTANGULO")
    
    if (a == b and b == c):
        print("TRIANGULO EQUILATERO")
    elif ((a == b and a != c) or (a == c and a != b) or (b == c and b != a)):
        print("TRIANGULO ISOSCELES")
