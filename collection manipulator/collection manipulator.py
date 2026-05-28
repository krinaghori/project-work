print("WELCOME TO THE STUDENTS DATA ORGANIZER !")
print()
print()
STUDENTS = []

ALL_SUBJECTS = set()

while True:
    print("Select An Option:")
    print()
    print("1. Add Student")
    print("2.Display All Students")
    print("3.Update Student's Information")
    print("4.Delete Student")
    print("5.Delete All Students")
    print("6.Display Subjects Offered")
    print("7.Exit")
    print()

    choice = int(input("Enter Your Choice:"))
    print()

    match choice:
        case 1:
            print("Enter Student's Details:")
         
            student_id = int(input("STUDENT ID :-"))
            name = input("NAME :-")
            age = int(input("AGE :-"))
            grade = input("GRADE :-")
            dob = input("DATE OF BIRTH (YYYY-MM-DD) :-")

            student_info = (student_id,dob)
            subjects = input("SUBJECTS (comma-separated) :-").split(",")
            subjects = [sub.strip() for sub in subjects]
            
            ALL_SUBJECTS.update(subjects)
            
            student = {
                "id":student_info[0],
                "dob":student_info[1],
                "name": name,
                "age": age,
                "grade": grade,
                "subjects":subjects
            }    
                      

            STUDENTS.append(student)
            print()
            print("STUDENT ADDED SUCCESSFULLY!")
            print()
            

            
        case 2:
            if not STUDENTS:
                print("student's data not found here.....")
                print()
            else:    
                for stu in STUDENTS:
                     print(f"STUDENT ID:{stu['id']} | NAME:{stu['name']} | AGE:{stu['age']} | GRADE:{stu['grade']} | SUBJECTS:{','.join(stu['subjects'])} |DATE OF BIRTH :{stu['dob']} ")
                print()
        case 3:
            print("updating.....")

            stu_id = int(input("Enter Student ID to Update :"))

            found = False

            for stu in STUDENTS:
                if stu["id"]== stu_id:
                    found = True
                    while True:
                        print("Press 1 For Update Name.")
                        print("Press 2 For Update Age.")
                        print("Press 3 For Update Grade.")
                        print("Press 4 For Update Date Of Birth.")
                        print("Press 5 for Update Subject.")
                        print("Press 6 For Exit.")
                        print()

                        op = int(input("Enter Your Operation:"))

                        match op:
                            case 1:
                                NEW_NAME = input('Enter New Name:-')
                                stu['name']=NEW_NAME
                            case 2:
                                NEW_AGE = input('Enter New Age:-')
                                stu['age']=NEW_AGE
                            case 3:
                                NEW_GRADE = input('Enter New Grade:-')
                                stu['grade']=NEW_GRADE
                            case 4:
                                NEW_DOB = input('Enter New Date Of Birth:-')
                                stu['dob']=NEW_DO
                            case 5:
                                NEW_SUB = input('Enter New Sujects:-')
                                stu['subjects']=NEW_SUB
    
                            case 6:
                                print("EXITING.....")
                                break
                            case _:print("Invalid Operation.")
                        print("Update Student Successfully.")
                    if found == False:
                        print("No Record Found...")
                    print()    
        case 4:
            stu_id = int(input("Enter Student ID to Update :"))

            found = False

            for stu in STUDENTS:
                if stu["id"]== stu_id:
                    found = True
                    STUDENTS.remove(stu)
                    print("Student Deleted Successfully !")
            if found == False:
                print("Student Not Found.")
            print()    
            
        case 5:
            STUDENTS.clear()
            print("All Students Data Deleted Successfully.")
            print()
        case 6:
            print("Subject Offered:")
            print()
            for subject in ALL_SUBJECTS:
                print(subject)
            print()
            
        case 7:
            print("THANK YOU FOR USING STUDENT DATA ORGANIZER.")
            break 
        case _:
            print("Invalid Choice ! Please Try Again.")

            
            
            
    
