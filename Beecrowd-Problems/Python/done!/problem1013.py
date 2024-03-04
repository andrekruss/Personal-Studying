def maior_ab(a: int, b: int) -> int:
    return (a + b + abs(a - b)) / 2

a, b, c = map(lambda x: int(x), input().split(" "))

if (maior_ab(a, b) == a):
    if (maior_ab(a, c) == a):
        print("{} eh o maior".format(a))
    else:
        print("{} eh o maior".format(c))
elif (maior_ab(b, c) == b):
    print("{} eh o maior".format(b))
else:
    print("{} eh o maior".format(c))


