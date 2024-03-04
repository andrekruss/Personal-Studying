value = int(input())
q100 = value // 100
remainder_value = value - (q100 * 100)
q50 = remainder_value // 50
remainder_value -= (q50 * 50)
q20 = remainder_value // 20
remainder_value -= (q20 * 20)
q10 = remainder_value // 10
remainder_value -= (q10 * 10) 
q5 = remainder_value // 5
remainder_value -= (q5 * 5)
q2 = remainder_value // 2
remainder_value -= (q2 * 2)
q1 = remainder_value // 1

print(value)
print("{} nota(s) de R$ 100,00".format(q100))
print("{} nota(s) de R$ 50,00".format(q50))
print("{} nota(s) de R$ 20,00".format(q20))
print("{} nota(s) de R$ 10,00".format(q10))
print("{} nota(s) de R$ 5,00".format(q5))
print("{} nota(s) de R$ 2,00".format(q2))
print("{} nota(s) de R$ 1,00".format(q1))

