even_counter = 0
odd_counter = 0
positive_counter = 0
negative_counter = 0

def is_even(num: int) -> bool:
    return num % 2 == 0

def is_positive(num: int) -> bool:
    return num > 0

def is_zero(num: int) -> bool:
    return num == 0

for i in range(0, 5):
    
    value = int(input())

    if (is_even(value)):
        even_counter += 1
    else:
        odd_counter += 1

    if (is_zero(value)):
        continue
    
    if (is_positive(value)):
        positive_counter += 1
    else:
        negative_counter += 1

print(f"{even_counter} valor(es) par(es)")
print(f"{odd_counter} valor(es) impar(es)")
print(f"{positive_counter} valor(es) positivo(s)")
print(f"{negative_counter} valor(es) negativo(s)")
