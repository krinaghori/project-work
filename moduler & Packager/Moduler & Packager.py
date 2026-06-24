print("===================================")
print("WELCOME TO MULTI - UTILITY TOOLKIT")
print("===================================")
print()

from datetime import datetime

while True:

   print("Choose an Option:")
   print("1.Datetime and Time Operations")
   print("2.Mathematical Operations")
   print("3.Random Data Generation")
   print("4.Generate Unique Identifiers (UUID)")
   print("5.File Operations (Custom Module)")
   print("6.Explore Module Attributes (dir())")
   print("7.Exit")
   print()
   print("===================================")
   print()

   choice = int(input("Enter Your Choice :"))
   print()

   match choice:
        case 1:
            while True:
              print("Datetime and Time Operations:")
              print("1. Display Current Date And Time")
              print("2.Calculate Difference Between Two Dates/Time")
              print("3.Format Date Into Custom Format")
              print("4.Stopwatch")
              print("5.Countdowm Timer")
              print("6.Back To Main Menu")
              print()
              choose = int(input("Choose an Option: "))
              print()

              match choose:
                  case 1:
                      current_date = datetime.now()
                      print()
                      print("Current Date And Time :",current_date)
                      print("______________________________________________")
                      print()
                  case 2:
                      print()
                      D1 = input("Enter The First Date (YYYY-MM-DD):")
                      D2 = input("Enter The Second Date (YYYY-MM-DD):")
                      date1 = datetime.strptime(D1,"%Y-%m-%d")
                      date2 = datetime.strptime(D2,"%Y-%m-%d")
                      print("Difference:", (date2 - date1).days)
                      print("_______________________________________________")
                      print()

                  case 3:
                      print()
                      D3 = input("Enter Date (YYYY-MM-DD):")
                      date3 = datetime.strptime(D3,"%Y-%m-%d")
                      print("Custom Formate :",date3.strftime("%A, %d %B %Y"))
                      print("_______________________________________________")
                      print()           
                  case 4:
                      print()
                      start = datetime.now()
                      input("Press Enter to Stop.......")
                      print("Time:",datetime.now() - start)
                      print("_______________________________________________")
                      print()

                  case 5:
                      import time
                      print()
                      n = int(input("Enter seconds:"))
                      for i in range(n,0,-1):
                          print(i)
                          time.sleep(1)
                      print("Time's Up !!!")
                      print("_______________________________________________")
                      print()    

                  case 6:
                      print("Back To Main Menu......")
                      print()
                      break
                  case _:
                        print("Invalid Choice")



        case 2:
           while True:
             print("Mathematical Operations:")
             print("1.Calculate Factorial")
             print("2.Solve Compound Interest")
             print("3.Trigonometric Calculations")
             print("4.Area of Geometric Shapes")
             print("5.Back to Main Menu")

             choose = int(input("Choose an Option: "))

             match choose:
                 case 1:
                     print()
                     def factorial(n):
                         if n == 0 or n == 1:
                             return 1
                         return n*factorial(n-1)
                     num = int(input("Enter a Number:"))
                     print("Factorial =", factorial(num))
                     print("_______________________________________________")
                     print()
                     
                 case 2:
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

                 case 3:
                     print()
                     import math
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
                 case 4:
                     print()
                     import math
                     while True:
                         print()
                         print("1. Rectangle")
                         print("2. Square")
                         print("3. Triangle")
                         print("4. Circle")
                         print("5. Exit")
                         print()

                         choice = int(input("Enter your choice: "))
                         print()

                         match choice:
                          case 1:
                             print() 
                             l = float(input("Length: "))
                             b = float(input("Breadth: "))
                             print()
                             print("Area Of Rectangle =", l * b)
                             print()

                          case 2:
                             print()
                             s = float(input("Side: "))
                             print()
                             print("Area Of Square =", s * s)
                             print()
                          case 3:
                             print()
                             b = float(input("Base: "))
                             h = float(input("Height: "))
                             print()
                             print("Area Of Triangle =", 0.5 * b * h)
                             print()

                          case 4:
                             print()
                             r = float(input( "Radius: "))
                             print()
                             print("Area Of Circle =", math.pi * r * r)
                             print()
                          case 5 :
                               print("Exiting......")
                               break   
                          case _:
                             print("Invalid Choice")
                             print()
                 case 5:
                     print("Back To Main Menu......")
                     print()
                     break       
                 case _:
                     print("Invalid Choice")
                     print()
        case 3:
           while True:
                 print()
                 print("Rendom Data Generation:")
                 print("1.Generate Random Number")
                 print("2.Generate Random List")
                 print("3.Create Random Password")
                 print("4.Generate Random OTP")
                 print("5. Back to Main Menu")
                 print()
                 choose = int(input("Enter Your Choice :"))
                 print()


                 match choose:       
                  case 1:
                     print()
                     import random
                     print()
                     num = random.randint(1, 100)
                     print("Random Number =", num)
                     print()     
                  case 2:
                     print()
                     import random
                     n = int(input("How many numbers? "))
                     print()
                     random_list = []
                     for i in range(n):
                       random_list.append(random.randint(1, 100))
                                                   
                     print("Random List:",random_list )
                     print()
                  case 3:
                     print()
                     import random
                     import string
                     print()
                     length = int(input("Enter Password Length :"))
                     print()
                     chars = string.ascii_letters + string.digits + string.punctuation
                     password = ""
                     for i in range(length):
                        password += random.choice(chars)
                     print("Random Password:",password)
                     print()
                  case 4:
                      print()
                      import random
                      print("Your OTP :",random.randint(100000, 999999))
                      print()
                  case 5:
                   print()
                   print("Back To Main Menu.....")
                   print()
                   break
                  case _:
                   print()
                   print("Invalid Choice")
                   print()


        case 4: 
             print()
             import uuid
             print("Generated UUID:",uuid.uuid4())
             print()

        case 5:
           while True:
             print("File Operations:")
             print("1. Create a new file")
             print("2. Write to a file")
             print("3. Read from a file")
             print("4. Append to a file")
             print("5. Back to Main Menu")
             print()

             choice = int(input("Enter your choice: "))
             print()

             match choice:
                 case 1:
                   print()
                   filename = input("Enter file name: ")
                   print()
                   open(filename, "w").close()
                   print("File created successfully!")
                   print()

                 case 2:
                   print()
                   filename = input("Enter file name: ")
                   data = input("Enter data to write: ")
                   print()
                   with open(filename, "w") as f:
                        f.write(data)
                   print("Data written successfully!")
                   print()

                 case 3:
                  print()
                  filename = input("Enter file name: ")
                  print()
                  try:
                     with open(filename, "r") as f:
                       print("File Content:")
                       print()
                       print(f.read())
                  except FileNotFoundError:
                    print()
                    print("File does not exist!")
                    print()
 
                 case 4:
                    print()
                    filename = input("Enter file name: ")
                    data = input("Enter data to append: ")
                    print()
                    with open(filename, "a") as f:
                      f.write("\n" + data)
                    print("Data appended successfully!")
                    print()

                 case 5:
                  print()
                  print("Back to Main Menu")
                  print()
                  break

                 case _:
                  print()
                  print("Invalid choice!")
                  print()
        case 6: 
             print() 
             print("Explore Module Attributes:")
             module_name = input("Enter module name to explore: ")
             module = __import__(module_name)
             print(f"Available Attributes in {module_name} module:")
             print(dir(module))
             print()
        case 7:
             print()
             print("Thank You For Using The Multi - Utility Toolkit !")
             print()
             break   
        case _: 
             print("Invalid Choice")
             print()