salary = float(input())
tax = 0

if (salary >= 0.00 and salary <= 2000.00):
    print("Isento")
elif (salary > 2000.00 and salary <= 3000.00):
    tax_rate = 0.08
    readjusted_salary = salary - 2000
    tax += readjusted_salary * tax_rate
    print("R$ {:.2f}".format(tax))
elif (salary > 3000.00 and salary <= 4500.00):
    tax_rate = 0.18
    readjusted_salary = salary - 3000
    tax += (readjusted_salary * tax_rate + 0.08 * 1000)
    print("R$ {:.2f}".format(tax))
elif (salary > 4500.00):
    tax_rate = 0.28
    readjusted_salary = salary - 4500
    tax += (readjusted_salary * tax_rate + 0.18 * 1500 + 0.08 * 1000)
    print("R$ {:.2f}".format(tax))