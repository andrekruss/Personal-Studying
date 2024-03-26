# Task
# Given an integer, , perform the following conditional actions:

# If  is odd, print Weird
# If  is even and in the inclusive range of  to , print Not Weird
# If  is even and in the inclusive range of  to , print Weird
# If  is even and greater than , print Not Weird
# Input Format

# A single line containing a positive integer, .

# Constraints

# Output Format

# Print Weird if the number is weird. Otherwise, print Not Weird.

def is_weird(num):
    if (num % 2 != 0):
        return True
    if (num >= 6 and num <= 20):
        return True
    return False

if __name__ == '__main__':
    n = int(input().strip())

    if (is_weird(n)):
        print("Weird")
    else:
        print("Not Weird")