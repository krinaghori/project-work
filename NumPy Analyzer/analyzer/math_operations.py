import numpy as np

class DataAnalytics2:


    def __init__(self):
        self.arr = None

    def mathematical_operations(self):

     if self.arr is None:
        print("Please create an array first!")
        return
     while True:
        print()
        print("Mathematical Operations")
        print("1. Addition")
        print("2. Subtraction")
        print("3. Multiplication")
        print("4. Division")
        print("5. Exit")
        print()

        choice = int(input("Enter your choice: "))
        print()

        match choice:

            case 1 | 2 | 3 | 4:

                total = self.arr.size

                print(f"Enter {total} elements:")
                # elements = list(map(int, input().split()))

                try:
                  elements = list(map(int, input().split()))
                except ValueError:
                  print("Enter only numbers.")
                  continue

                if len(elements) != self.arr.size:
                  print("Invalid number of elements!")
                  continue

                second_array = np.array(elements).reshape(self.arr.shape)

                print("Original Array:")
                print(self.arr)

                print("Second Array:")
                print(second_array)

                match choice:

                    case 1:
                        print()
                        print("Result of Addition:")
                        print()
                        print(self.arr + second_array)
                        print()

                    case 2:
                        print()
                        print("Result of Subtraction:")
                        print()
                        print(np.abs(self.arr - second_array))
                        print()

                    case 3:
                        print()
                        print("Result of Multiplication:")
                        print()
                        print(self.arr * second_array)
                        print()

                    case 4:
                        if np.any(second_array == 0):
                            print()
                            print("Division by zero is not allowed.")
                            print()
                        else:
                            print()
                            print("Result of Division:")
                            print()
                            print(self.arr / second_array)
                            print()

            case 5:
                print()
                print("Exiting Mathematical Operations...")
                print()
                break

            case _:
                print()
                print("Invalid Choice!")
                print()