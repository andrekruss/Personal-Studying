age_in_days = int(input())
years = age_in_days // 365
months = (age_in_days % 365) // 30
days = (age_in_days % 365) % 30
print("{} ano(s)".format(years))
print("{} mes(es)".format(months))
print("{} dia(s)".format(days))
