name = input()
fixed_salary = float(input())
total_sales = float(input())

final_salary = fixed_salary + 0.15 * total_sales

print("TOTAL = R$ {:.2f}".format(final_salary))