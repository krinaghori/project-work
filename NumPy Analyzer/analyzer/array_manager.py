import numpy as np

class DataAnalytics:

    def __init__(self):
        self.arr = None

    def create_array(self):


      while True:
        print()
        print("Select the type of array to create:")
        print("1. 1D Array")
        print("2. 2D Array")
        print("3. 3D Array")
        print("4.Exit")
        print()

       

        choice = int(input("Enter your choice: "))
        print()

        match choice:

            case 1:
                print()
                size = int(input("Enter number of elements: "))
                print()

                elements = list(map(int, input(f"Enter {size} elements separated by space: ").split()))
                print()

                self.arr = np.array(elements)

                print("Array created successfully:")
                print()
                print(self.arr)
                print()

            case 2:
                print()
                rows = int(input("Enter the number of rows: "))
                cols = int(input("Enter the number of columns: "))
                print()

                total = rows * cols
                print() 
                elements = list(map(int, input(f"Enter {total} elements separated by space: ").split()))
                print()

                self.arr = np.array(elements).reshape(rows, cols)
                
                print()
                print("Array created successfully:")
                print()
                print(self.arr)
                print()

            case 3:
                print()
                depth = int(input("Enter depth: "))
                rows = int(input("Enter rows: "))
                cols = int(input("Enter columns: "))
                print()

                total = depth * rows * cols
                print()
                elements = list(map(int, input(f"Enter {total} elements separated by space: ").split()))
                print()

                self.arr = np.array(elements).reshape(depth, rows, cols)
                print()
                print("Array created successfully:")
                print(self.arr)
                print()

            case 4:
                print("Exiting.....")
                break    

            case _:   
                print("Invalid Choice")