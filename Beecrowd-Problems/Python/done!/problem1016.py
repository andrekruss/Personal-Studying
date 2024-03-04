velocity_x = 60
velocity_y = 90
relative_velocity = velocity_y - velocity_x
distance = int(input())

time_in_hours = distance / relative_velocity
time_in_minutes = int(time_in_hours * 60)
print("{} minutos".format(time_in_minutes))
