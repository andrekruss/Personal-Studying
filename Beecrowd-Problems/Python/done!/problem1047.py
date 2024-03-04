hi, mi, hf, mf = map(lambda x: int(x), input().split(" "))

delta_h = hf - hi
delta_m = mf - mi

if (delta_h == 0 and delta_m == 0):
    print("O JOGO DUROU 24 HORA(S) E 0 MINUTO(S)")
else:
    if (delta_h == 0 and delta_m < 0):
        delta_h = 23
        delta_m += 60

    elif (delta_h > 0 and delta_m < 0):
        delta_m += 60
        delta_h -= 1

    elif (delta_h < 0 and delta_m >= 0):
        delta_h += 24

    elif (delta_h < 0 and delta_m < 0):
        delta_m += 60
        delta_h += 23

    print("O JOGO DUROU {} HORA(S) E {} MINUTO(S)".format(delta_h, delta_m))
