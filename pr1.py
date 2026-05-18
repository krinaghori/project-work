print("WELCOME TO THE PERSONAL DATA INTAKE FORM !")
print()

D = input("please enter your name:-")
A = int(input("please enter your age:-"))
B = float(input("please enter your height in meters:-"))
C = int(input("please enter your favourite number:-"))
print()

print("THANK YOU", end="!")
print("HERE IS THE INFORMATION WE COLLECTED:")
print()

print(input(f"NAME:{D}"))
print("type:",type(D))
print("memory address:",id(D))
print()

print(input(f"AGE:{A}"))
print("type:",type(A))
print("memory address:",id(A))
print()

print(input(f"HEIGHT:{B}"))
print("type:",type(B))
print("memory address:",id(B))
print()

print(input(f"FAV_NUMBER:{C}"))
print("type:",type(C))
print("memory address:",id(C))
print()

print("your birth year is approximately:",+2026-A)
print()

print("THANK YOU FOR USING THE PERSONAL DATA INTAKE FORM.")
print("GOODBYE !")


