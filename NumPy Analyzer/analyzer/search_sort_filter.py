import numpy as np

class DataAnalytics4:

    def __init__(self):
        self.arr = None

    def search_sort_filter(self):

        if self.arr is None:
            print()
            print("Please create an array first!")
            print()
            return

        while True:
            print()
            print("Search, Sort, or Filter Arrays")
            print("1. Search Element")
            print("2. Sort Array")
            print("3. Filter Array")
            print("4. Exit")
            print()

            choice = int(input("Enter your choice: "))
            print()

            match choice:

                case 1:
                    print()
                    element = int(input("\nEnter element to search: "))
                    print()

                    position = np.where(self.arr == element)
                    print()

                    if len(position[0]) == 0:
                        print()
                        print("Element not found!")
                        print()

                    else:
                        print()
                        print("Element found at index:")
                        print()
                        print(position)

                case 2:
                    print()
                    print("1. Ascending Order")
                    print("2. Descending Order")
                    print()

                    sort_choice = int(input("Enter your choice: "))
                    print()

                    match sort_choice:

                        case 1:
                            result = np.sort(self.arr, axis=None)
                            print()
                            print("Sorted Array (Ascending):")
                            print()
                            print(result)

                        case 2:
                            result = np.sort(self.arr, axis=None)[::-1]
                            print()
                            print("Sorted Array (Descending):")
                            print()
                            print(result)

                        case _:
                            print()
                            print("Invalid Choice!")
                            print()

                case 3:
                    print()
                    value = int(input("Show elements greater than: "))
                    print()

                    result = self.arr[self.arr > value]
                    print()
                    print("Filtered Array:")
                    print()
                    print(result)

        
                case 4:
                    print()
                    print("Exiting Search/Sort/Filter Menu...")
                    print()
                    break

                case _:
                    print()
                    print("Invalid Choice!")
                    print()