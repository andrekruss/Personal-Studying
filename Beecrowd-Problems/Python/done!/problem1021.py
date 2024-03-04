value = input()
notes_value, coins_value = map(lambda x: int(x), value.split("."))

n100 = notes_value // 100
remaining_value = notes_value % 100 
n50 = remaining_value // 50
remaining_value = remaining_value % 50
n20 = remaining_value // 20
remaining_value = remaining_value % 20
n10 = remaining_value // 10
remaining_value = remaining_value % 10
n5 = remaining_value // 5
remaining_value = remaining_value % 5
n2 = remaining_value // 2
remaining_value = remaining_value % 2

c100 = remaining_value // 1
c50 = coins_value // 50
remaining_value = coins_value % 50
c25 = remaining_value // 25
remaining_value = remaining_value % 25
c10 = remaining_value // 10
remaining_value = remaining_value % 10
c5 = remaining_value // 5
remaining_value = remaining_value % 5
c1 = remaining_value // 1

print("NOTAS:")
print("{} nota(s) de R$ 100.00".format(n100))
print("{} nota(s) de R$ 50.00".format(n50))
print("{} nota(s) de R$ 20.00".format(n20))
print("{} nota(s) de R$ 10.00".format(n10))
print("{} nota(s) de R$ 5.00".format(n5))
print("{} nota(s) de R$ 2.00".format(n2))

print("MOEDAS:")
print("{} moeda(s) de R$ 1.00".format(c100))
print("{} moeda(s) de R$ 0.50".format(c50))
print("{} moeda(s) de R$ 0.25".format(c25))
print("{} moeda(s) de R$ 0.10".format(c10))
print("{} moeda(s) de R$ 0.05".format(c5))
print("{} moeda(s) de R$ 0.01".format(c1))




