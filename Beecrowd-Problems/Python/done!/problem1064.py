positive_avg = 0
positive_counter = 0

for i in range(0, 6):

    value = float(input())

    if value > 0:
        positive_avg += value
        positive_counter += 1

positive_avg /= positive_counter

print(f"{positive_counter} valores positivos")
print(f"{positive_avg:.1f}")
