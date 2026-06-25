from datetime import datetime
import time

def current_datetime():
    print()
    print("Current Date and Time:",datetime.now())
    print()

def date_diff():
    print()
    D1 = input("Enter The First Date (YYYY-MM-DD):")
    D2 = input("Enter The Second Date (YYYY-MM-DD):")
    date1 = datetime.strptime(D1,"%Y-%m-%d")
    date2 = datetime.strptime(D2,"%Y-%m-%d")
    print("Difference:", abs((date2 - date1)).days,"days")
    print("_______________________________________________")
    print() 
       
def date_style():
    print()
    D3 = input("Enter Date (YYYY-MM-DD):")
    date3 = datetime.strptime(D3,"%Y-%m-%d")
    print("Custom Formate :",date3.strftime("%A, %d %B %Y"))
    print("_______________________________________________")
    print()

def stopwatch():
       print()
       start = datetime.now()
       input("Press Enter to Stop.......")
       print("Time:",datetime.now() - start)
       print("_______________________________________________")
       print() 

def countdown_timer():
       print()
       n = int(input("Enter seconds:"))
       for i in range(n,0,-1):
          print(i)
          time.sleep(1)
       print("Time's Up !!!")
       print("_______________________________________________")
       print()    