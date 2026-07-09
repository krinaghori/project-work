import numpy as np

class DataAnalytics3:

    def __init__(self):
        self.arr = None


    def combine_split_arrays(self):

        if self.arr is None:
            print("Please create an array first!")
            return

        while True:
            print()
            print("Combine / Split Arrays")
            print("1. Combine Arrays")
            print("2. Split Array")
            print("3. Exit")
            print()

            choice = int(input("Enter your choice: "))
            print()

            match choice:

                case 1:

                    total = self.arr.size
                    
                    print()
                    print(f"Enter {total} elements for second array:")
                    print()
                    elements = list(map(int, input().split()))

                    second_array = np.array(elements).reshape(self.arr.shape)
                    print()
                    print("1. Vertical Stack")
                    print("2. Horizontal Stack")
                    print()

                    combine_choice = int(input("Enter your choice: "))
                    print()

                    match combine_choice:

                        case 1:
                            result = np.vstack((self.arr, second_array))
                            print()
                            print("Vertical Stack:")
                            print()
                            print(result)
                            print()

                        case 2:
                            result = np.hstack((self.arr, second_array))
                            print()
                            print("Horizontal Stack:")
                            print()
                            print(result)
                            print()

                        case _:
                            print()
                            print("Invalid Choice!")
                            print()

                case 2:
                    print()
                    print("1. Vertical Split")
                    print("2. Horizontal Split")
                    print()

                    split_choice = int(input("Enter your choice: "))
                    print()

                    parts = int(input("Enter number of parts: "))
                    print()

                    match split_choice:

                        case 1:
                            try:
                                result = np.vsplit(self.arr, parts)

                                print("Vertical Split:")
                                for i, arr in enumerate(result, 1):
                                    print(f"Part {i}")
                                    print()
                                    print(arr)
                                    print()

                            except:
                                print()
                                print("Array cannot be split equally!")
                                print()

                        case 2:
                            try:
                                result = np.hsplit(self.arr, parts)

                                print("\nHorizontal Split:")
                                for i, arr in enumerate(result, 1):
                                    print(f"Part {i}")
                                    print()
                                    print(arr)
                                    print()

                            except:
                                print()
                                print("Array cannot be split equally!")
                                print()

                        case _:
                            print()
                            print("Invalid Choice!")
                            print()

                case 3:
                    print()
                    print("Exiting Combine/Split Menu...")
                    print()
                    break

                case _:
                    print()
                    print("Invalid Choice!")
                    print()