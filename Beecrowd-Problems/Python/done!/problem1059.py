def is_even(num: int) -> bool:
    return num % 2 == 0

for i in range(1, 101):
    if (is_even(i)):
        print(f"{i}")