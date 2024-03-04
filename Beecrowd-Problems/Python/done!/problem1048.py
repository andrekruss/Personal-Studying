def calculate_readjustment(readjustment_rate) -> tuple:
    readjustment = salary * (readjustment_rate / 100)
    new_salary = salary + readjustment
    return (readjustment, new_salary)

salary = float(input())
new_salary = 0
readjustment = 0
readjustment_rate = 0

if (salary >= 0.00 and salary <= 400.00):
    readjustment_rate = 15
    readjustment, new_salary = calculate_readjustment(readjustment_rate)
elif (salary >= 400.01 and salary <= 800.00):
    readjustment_rate = 12
    readjustment, new_salary = calculate_readjustment(readjustment_rate)
elif (salary >= 800.01 and salary <= 1200.00):
    readjustment_rate = 10
    readjustment, new_salary = calculate_readjustment(readjustment_rate)
elif (salary >= 1200.01 and salary <= 2000.00):
    readjustment_rate = 7
    readjustment, new_salary = calculate_readjustment(readjustment_rate)
elif (salary > 2000.00):
    readjustment_rate = 4
    readjustment, new_salary = calculate_readjustment(readjustment_rate)

print("Novo salario: {:.2f}".format(new_salary))
print("Reajuste ganho: {:.2f}".format(readjustment))
print("Em percentual: {} %".format(readjustment_rate))