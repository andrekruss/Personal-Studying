code, amount = map(lambda x: int(x), input().split(" "))

if (code == 1):
    total = 4.00 * amount
    print("Total: R$ {:.2f}".format(total))
elif (code == 2):
    total = 4.50 * amount
    print("Total: R$ {:.2f}".format(total))
elif (code == 3):
    total = 5.00 * amount
    print("Total: R$ {:.2f}".format(total))
elif (code == 4):
    total = 2.0 * amount
    print("Total: R$ {:.2f}".format(total))
elif (code == 5):
    total = 1.50 * amount
    print("Total: R$ {:.2f}".format(total))