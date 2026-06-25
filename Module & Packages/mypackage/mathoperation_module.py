import math

def factorial_number():
    print()
    def factorial(n):
        if n == 0 or n == 1:
           return 1
        return n*factorial(n-1)
    num = int(input("Enter a Number:"))
    print("Factorial =", factorial(num))
    print("_______________________________________________")
    print()
                     
def compound_interest():
    print()      
    p = float(input("Enter Principal Amount: "))
    r = float(input("Enter Rate of Interest (%): "))
    t = float(input("Enter Time (years): "))
    print()

    a = p * (1 + r / 100) ** t
    Compound_Interest = a - p

    print("Compound Interest =", Compound_Interest)
    print("Amount =", a)
                                                                           
    print("_______________________________________________")
    print()  

def trigonometry():
    print()
                    
    angle = float(input("Enter angle in degrees: "))
    radian = math.radians(angle)

    sin = math.sin(radian)
    cos = math.cos(radian)
    tan = math.tan(radian)
    print()
    print("Sin =", sin)
    print("Cos =", cos)
    print("Tan =", tan)
    print("Cosec =", 1 / sin)
    print("Sec =", 1 / cos)
    print("Cot =", 1 / tan)
    print("_______________________________________________")
    print()

def  area_Rectangle():
    print() 
    l = float(input("Length: "))
    b = float(input("Breadth: "))
    print()
    print("Area Of Rectangle =", l * b)
    print()

def area_Square():
    print()
    s = float(input("Side: "))
    print()
    print("Area Of Square =", s * s)
    print()  

def area_triangle():
    print()
    b = float(input("Base: "))
    h = float(input("Height: "))
    print()
    print("Area Of Triangle =", 0.5 * b * h)
    print()    

def area_circle():
    print()
    r = float(input( "Radius: "))
    print()
    print("Area Of Circle =", math.pi * r * r)
    print()           

