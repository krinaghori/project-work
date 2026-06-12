class Employee:
     def __init__(self,emp_name = "",emp_age=0,emp_id = "",emp_salary=0):
          self.__emp_name = emp_name
          self.__emp_age = emp_age
          self.__emp_id = emp_id
          self.__emp_salary = emp_salary

     def getter(self):
          print(f"EMPLOYEE ID : {self.__emp_id}, SALARY : {self.__emp_salary}")  

     def setter(self,id,salary):
          self.__emp_id = id
          self.__emp_salary = salary 

     def display(self):
         print(f"EMPLOYEE NAME :{self.__emp_name}")  
         print(f"EMPLOYEE AGE :{self.__emp_age}")  
         print(f"EMPLOYEE ID :{self.__emp_id }")  
         print(f"EMPLOYEE SALARY  :{self.__emp_salary}")           
          
class Manager(Employee):
     def __init__(self,emp_name = "",emp_age=0,emp_id = "",emp_salary=0,department = ""):
         super().__init__(emp_name ,emp_age,emp_id ,emp_salary)
         self.department = department
          
     def display(self):
         super().display()
         print(f"EMPLOYEE DEPARTMENT :{self.department}")          
            
class Developer(Employee):
     def __init__(self,emp_name = "",emp_age=0,emp_id = "",emp_salary=0,emp_lang = ""): 
         super().__init__(emp_name,emp_age,emp_id ,emp_salary)
         self.emp_lang = emp_lang

     def display(self):
         super().display()
         print(f"PROGRAMMING LANGUAGE :{self.emp_lang}")

print()
print("---WELCOME TO THE EMPLOYEE MANAGEMENT SYSTEM ---")
print()

OOP = []

while True :
    print("CHOOSE AN OPERATION :")
    print()
    print("1. Create a Employee")
    print("2. Create an Manager")
    print("3. Create a Developer")
    print("4. Show Details")
    print("5. Exit")
    print()

    choice = int(input("Enter Your Choice :"))
    print()


    match choice :
            
        case 1:
            emp_name = input("Enter Name :")
            emp_age = int(input("Enter Age :"))
            emp_id = input("Enter Employee ID :")
            emp_salary = float(input("Enter Salary :"))
            print()
            print(f"Employee Created With Name : {emp_name},Age : {emp_age},ID : {emp_id}, and Salary : ${emp_salary}.")
            print()
            employee = Employee(emp_name, emp_age, emp_id, emp_salary)
            OOP.append(employee)
            print()

        case 2:
            emp_name = input("Enter Name :")
            emp_age = int(input("Enter Age :"))
            emp_id = input("Enter Employee ID :")
            emp_salary = float(input("Enter Salary :"))
            department = input("Enter Department :")
            print()
            print(f"Manager Created With Name : {emp_name }, Age : {emp_age}, ID : {emp_id}, Salary : ${emp_salary}, Department : {department} .")
            print()
            manager = Manager(emp_name,emp_age,emp_id,emp_salary,department)
            OOP.append(manager)
            print()

        case 3:
            emp_name = input("Enter Name :")
            emp_age = int(input("Enter Age :"))
            emp_id = input("Enter Employee ID :")
            emp_salary = float(input("Enter Salary :"))
            emp_lang = input("Enter Programing Language :")
            print()
            print(f"Developer Created With Name : {emp_name }, Age : {emp_age}, ID : {emp_id}, Programing Language : {emp_lang},Salary : ${emp_salary} .")
            print()
            developer = Developer(emp_name , emp_age, emp_id, emp_salary, emp_lang)
            OOP.append(developer)
            print()

        case 4:
            print("Select An Option :")
            print("1.Employee")
            print("2.Manager")
            print("3.Developer")
            print("4.Exit")
            print()
            operetion = int(input("Enter Your Operetion :"))
            print()


            match operetion :
                case 1:
                    print("--- EMPLOYEE DETAILS---")
                    print()
                    found = False
                    for emp in OOP :
                        if type(emp) == Employee:
                           found = True
                           emp.display()
                           print()
                           print("-------------") 
                           print()   
                    if not found :
                        print("No Employee Record Found") 
                    print()               


                case 2:
                    print("--- MANAGER DETAILS---")
                    print()
                    found = False
                    for emp in OOP :
                        if type(emp) == Manager:
                           found = True
                           emp.display()
                           print()    
                           print("-------------") 
                           print()   
                    if not found :
                        print("No Manager Record Found") 
                    print()               


                case 3:
                    print("--- DEVELOPER DETAILS---")
                    print()
                    found = False
                    for emp in OOP :
                        if type(emp) == Developer:
                            found = True
                            emp.display()
                            print()    
                            print("-------------") 
                            print()   
                    if not found :
                        print("No Developer Record Found") 
                    print() 

                case 4:
                    print("Exiting....")
                    break

                case _ :
                    print("Invailid Operetoin:")
                    print()



        case 5:
            print("Exiting The System. All Resource Have Been Freed.")
            break
        case _:
            print("invalid choice !")
            
