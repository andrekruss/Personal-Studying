weight_a = 2
weight_b = 3
weight_c = 5
a = float(input())
b = float(input())
c = float(input())

average = (weight_a * a + weight_b * b + weight_c * c) / (weight_a + weight_b + weight_c)

print("MEDIA = {:.1f}".format(average))