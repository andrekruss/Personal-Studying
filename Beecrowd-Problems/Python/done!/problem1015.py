from math import sqrt

class Point:

    def __init__(self, x: float, y: float):
        self.x = x
        self.y = y


def calculate_distance(p1: Point, p2: Point) -> float:
    return sqrt(((p2.x - p1.x)**2) + ((p2.y - p1.y)**2))


x1, y1 = map(lambda x: float(x), input().split(" "))
x2, y2 = map(lambda x: float(x), input().split(" "))

dist = calculate_distance(Point(x1, y1), Point(x2, y2))
print("{:.4f}".format(dist))
    