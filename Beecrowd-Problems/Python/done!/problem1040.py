n1, n2, n3, n4 = map(lambda x: float(x), input().split(" "))
w1, w2, w3, w4 = 2, 3, 4, 1
average = (n1 * w1 + n2 * w2 + n3 * w3 + n4 * w4) / (w1 + w2 + w3 + w4)

print("Media: {:.1f}".format(average))

if (average >= 7.0):
    print("Aluno aprovado.")
elif (average < 5.0):
    print("Aluno reprovado.")
else:
    print("Aluno em exame.")
    exame = float(input())
    print("Nota do exame: {}".format(exame))
    average = (average + exame) / 2
    if (average >= 5.0):
        print("Aluno aprovado.")
    else:
        print("Aluno reprovado.")
    print("Media final: {}".format(average))
