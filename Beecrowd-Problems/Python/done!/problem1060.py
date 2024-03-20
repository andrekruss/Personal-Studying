number_of_inputs = 6
positive_counter = 0

for i in range(1, number_of_inputs + 1):

    value = float(input())

    if (value > 0):
        positive_counter += 1

print(f"{positive_counter} valores positivos")