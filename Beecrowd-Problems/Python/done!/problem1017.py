distance_per_liter = 12
time = int(input())
average_speed = int(input())
distance = average_speed * time
spent_fuel = distance / distance_per_liter
print("{:.3f}".format(spent_fuel))
