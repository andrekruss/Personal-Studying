even_counter = 0

for i in range(0, 5):

    value = int(input())

    if (value % 2 == 0):
        even_counter += 1

print(f"{even_counter} valores pares")