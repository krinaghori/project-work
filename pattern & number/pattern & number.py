print("welcome to the pattern generator and number analyzer!")
print()

while True:
    print("1.GENERATE A PATTERN")
    print("2.ANALYZEA RANGE OF NUMBERS")
    print("3.EXIT")
    print()

    choice = int(input("ENTER YOUR CHOICE:"))
    print()
    
    match choice:  
       case 1:
         print("WELCOME TO THE PATTERN GENERATING PROGRAM.")
         RAW_NUMBER=int(input("enter the number of row for the pattern:"))
         print()
         for i in range(1,RAW_NUMBER+1):
             for _ in range(5-i):
                 print(" ",end="")
             for j in range(1,i+1):
                print("*",end=" ")
             print()
             

     
       case 2:
           print("WELCOME TO THE NUMBER ANALYZER.")
           START = int(input("enter the starting number:"))
           END = int(input("enter the ending number:"))
           x = 0
           for i in range(START,END+1):
               if i % 2 == 0:
                   print(i,end=" ")
                   print(":-this is even number")
                   print()
               else:
                   print(i,end=" ")
                   print(":-this number is odd number")
                   print()

       case 3:
           print("exiting program.......")
           break
       case _:print("WRONG CHOICE.")
      
                 
      

