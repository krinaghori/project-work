print("WELCOME TO DATA ANALYZER AND TRANSFORMER PROGRAM.")
print()
def fact(n):
    if n == 0 :
       return 1
    else:
       return n* fact(n-1)

while True:
    print("select an option:")
    print()

    print("1.Input Data.")
    print("2.Display Data Summary.")
    print("3.Calculate Factorial.")
    print("4.Filter Data by Threshold.")
    print("5.Sort Data.")
    print("6.Display Dataset Statistics. ")
    print("7.Exit Program.")
    print()

    choice = int(input("Enter Your Choice:"))
    print()

    match choice:
        case 1:
            SIZE = int(input("Enter Array Size:"))
            print()
            arr = []
            for i in range(SIZE): 
                objects = int(input("Enter Objects:"))
                arr.append(objects)
            print("LIST:",arr)
            print()
            print("Data Has Been Stored Successfully !")
            print()

        case 2:
            print("Data Summary:")
            print()
            print("Total elements:",len(arr))
            print("Minimum Value:",min(arr))
            print("Maximum Value:",max(arr))
            print("Sum Of All Value:",sum(arr))
            average = sum(arr) / len(arr)
            print("Average Value:", average)
            print()
                    
        case 3:
            factorial= int(input("Enter a Number To Calculate Its Factorial:"))
            print()
            print(f"factorial of {factorial} is :- {fact(factorial)}")
            print()
            
            
        case 4:
            print("Enter a Threshold Value To Filter Out")
            print("Your_List:", arr)
            print()

            threshold = int(input("Enter Threshold Value: "))
            print()

            above = list(filter(lambda x: x > threshold, arr))
            below = list(filter(lambda x: x < threshold, arr))
            equal = list(filter(lambda x: x == threshold, arr))

            print(f"Values ABOVE {threshold}: {above}")
            print(f"Values BELOW {threshold}: {below}")
            print(f"Values EQUAL to {threshold}: {equal}")
            print()
        case 5:
            print("..MENU..")
            print("1. Ascending Order.")
            print("2. Descending Order.")
            print("3.Exit From This Program. ")
            print()
            sort = int(input("Choose Sorting Option:"))
            print()
            match sort:
                case 1:
                    print("Sorted Data In Ascending Order:")
                    arr.sort()
                    print(arr)
                    print()
                case 2:
                    print("Sorted Data In Descending Order:")
                    arr.sort(reverse=True)
                    print(arr)
                    print()
                case _:
                    print("Invalid Choice")    

        
        case 6:
            print("Dataset statistics:")
            print()
                 
            print("-------------------------------------------")
            print(" DATASET STATISTICS  || VALUE ")
            print("-------------------------------------------")
            print(" TOTAL_NUMBER        ||",len(arr)) 
            print(" MINIMUM_NUMBER      ||",min(arr))
            print(" MAXIMUM_NUMBER      ||",max(arr))
            print(" TOTAL_SUM           ||",sum(arr))
            print(" AVERAGE_VALUE       ||",sum(arr) / len(arr))
            print(" SORTED_DATA         ||",sorted(arr))
            print("-------------------------------------------")
            print()
        case 7:
            print("Thanks For Using The Data Analyzer And Transformer Program. Goodbye !")
            break
        case _:
            print("Invalid Choice ! Please Try Again.")
            
