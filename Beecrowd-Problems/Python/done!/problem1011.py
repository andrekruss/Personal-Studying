class Sphere:

    def __init__(self, r):
        pi = 3.14159
        self.radius = r
        self.volume = (4/3) * pi * r * r * r
    
r = float(input())
sp = Sphere(r)
print("VOLUME = {:.3f}".format(sp.volume))