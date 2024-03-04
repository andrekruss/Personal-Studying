start, end = map(lambda x : int(x), input().split(" "))

if (end - start > 0):
    print("O JOGO DUROU {} HORA(S)".format(end - start))
elif (end - start < 0):
    print("O JOGO DUROU {} HORA(S)".format(end + 24 - start))
else:
    print("O JOGO DUROU 24 HORA(S)")