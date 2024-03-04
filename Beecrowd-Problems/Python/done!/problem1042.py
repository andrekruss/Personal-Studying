n1, n2, n3 = map(lambda x: int(x), input().split(" "))

if (n1 >= n2 and n1 >= n3):
    maior = n1
    if (n2 > n3):
        medio = n2
        menor = n3
    else:
        medio = n3
        menor = n2
elif (n2 >= n1 and n2 >= n3):
    maior = n2
    if (n1 > n3):
        medio = n1
        menor = n3
    else:
        medio = n3
        menor = n1
elif (n3 >= n1 and n3 >= n2):
    maior = n3
    if (n1 > n2):
        medio = n1
        menor = n2
    else:
        medio = n2
        menor = n1

print(menor)
print(medio)
print(maior)
print()
print(n1)
print(n2)
print(n3)
