from mypackage.datetime_module import *
from mypackage.mathoperation_module import *
from mypackage.random_module import *
from mypackage.file_operations import *

print("===================================")
print("WELCOME TO MULTI - UTILITY TOOLKIT")
print("===================================")
print()
    
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
                     current_datetime()
                  case 2:
                     date_diff()
                  case 3:
                      date_style()
                  case 4:
                      stopwatch()
                  case 5:
                     countdown_timer()
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
                     factorial_number()
                 case 2:
                     compound_interest()
                 case 3:
                     trigonometry()
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
                            area_Rectangle()

                          case 2:
                             area_Square()
                          case 3:
                             area_triangle()
                          case 4:
                            area_circle()
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
                      random_num()
                  case 2:
                      random_list()
                  case 3:
                      random_password()
                  case 4:
                      random_OTP()
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
                   file_create()
                 case 2:
                   file_write()
                 case 3:
                    file_read()
                 case 4:
                   file_append()
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