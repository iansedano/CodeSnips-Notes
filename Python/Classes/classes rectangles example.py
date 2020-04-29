import math

class Point:
    """represents a point in 2-D space."""

blank = Point()
print(Point)
print(blank)



print('\n\n/////ATTRIBUTES////')

blank.x = 3.0
blank.y = 4.0

print(blank.y)

print('(%g, %g)' % (blank.x, blank.y))

distance = math.sqrt(blank.x**2 + blank.y**2)

print(distance)

def print_point(p):
    print('(%g, %g)' % (p.x, p.y))

print_point(blank)


print('\n\n/////RECTANGLES////')

class Rectangle:
    """represents a rectangle.

    attributes: width, height, corner.
    """

box = Rectangle()
box.width = 100.0
box.height = 200.0
box.corner = Point()
box.corner.x = 0.0
box.corner.y = 0.0

print(box.width)
print(box.corner.x)


print('\n\n/////INSTANCES AS RETURN VALUES////')

def find_center(rect):
    center = Point()
    center.x = rect.corner.x + rect.width/2
    center.y = rect.corner.y + rect.height/2
    return center

center = find_center(box)
print_point(center)


print('\n\n/////OBJECTS ARE MUTABLE////')

box.width = box.width + 50
box.height = box.height + 100

def grow_rectangle(rect, dwidth, dheight):
    rect.width += dwidth
    rect.height += dheight

print(box.width, box.height)
grow_rectangle(box, 50, 100)
print(box.width, box.height)

def move_rectangle(rect, dx, dy):
    rect.corner.x += dx
    rect.corner.y += dy

move_rectangle(box,100,100)
print('MOVE RECTANGLE >>> ',box.corner.x, box.corner.y)

print('\n\n/////COPYING////')

p1 = Point()
p1.x = 3.0
p1.y = 4.0

import copy
p2 = copy.copy(p1)

print_point(p1)
print_point(p2)

print('p1 is p2  >> ' + str(p1 is p2) )
print('p1 == p2  >> ' + str(p1 == p2) ) # because python checks object identity

print('\nSHALLOW copy')
box2 = copy.copy(box)
print('box2 is box  >> ' + str(box2 is box))
print('box2.corner is box.corner  >> ' + str(box2.corner is box.corner))

print('\nDEEP copy')
box3 = copy.deepcopy(box)
print('box3 is box  >> ' + str(box3 is box))
print('box3.corner is box.corner  >> ' + str(box3.corner is box.corner))


def move_rectangle2(rect, dx, dy, copy):
    if copy == True:
        new_rect = copy.deepcopy(rect)
        new_rect.corner.x += dx
        new_rect.corner.y += dy
    else:
        rect.corner.x += dx
        rect.corner.y += dy

#move_rectangle2()




print('\n\n/////DEBUGGING////')


# attribute error

p = Point()
p.x = 3
p.y = 4

try:
    print(p.z)
except Exception as exc:
    print('attribute error while printing p.z as there is no p.z attribute defined')

print(type(p)) # to find out what type an object is

print(isinstance(p,Point)) #whether object is instance of class

print(hasattr(p, 'x')) #whether object has a certain attribute
print(hasattr(p, 'z'))
