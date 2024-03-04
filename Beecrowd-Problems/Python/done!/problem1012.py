class RectangleTriangle:

    def __init__(self, b: float, h: float):
        self.base = b
        self.height = h
    
    def get_area(self) -> float:
        return (self.base * self.height) / 2

class Circle:

    def __init__(self, r: float):
        self.radius = r
    
    def get_area(self) -> float:
        pi = 3.14159
        return (pi * self.radius * self.radius)
    
class Trapezium:

    def __init__(self, b1: float, b2: float, h: float):
        self.base1= b1
        self.base2 = b2
        self.height = h

    def get_area(self) -> float:
        return ( (self.base1 + self.base2) * self.height ) / 2
    
class Square:

    def __init__(self, s: float):
        self.side = s

    def get_area(self) -> float:
        return self.side * self.side

class Rectangle:

    def __init__(self, a: float, b: float):
        self.side_a = a
        self.side_b = b

    def get_area(self) -> float:
        return self.side_a * self.side_b


## MAIN PROGRAM ## 
a, b, c = map(lambda x: float(x), input().split())
rectangle_triangle = RectangleTriangle(a, c)
circle = Circle(c)
trapezium = Trapezium(a, b, c)
square = Square(b)
rectangle = Rectangle(a, b)

print("TRIANGULO: {:.3f}".format(rectangle_triangle.get_area()))
print("CIRCULO: {:.3f}".format(circle.get_area()))
print("TRAPEZIO: {:.3f}".format(trapezium.get_area()))
print("QUADRADO: {:.3f}".format(square.get_area()))
print("RETANGULO: {:.3f}".format(rectangle.get_area()))

