import numpy as np

class DataAnalytics5:

    def __init__(self):
        self.arr = None

    def compute_statistics(self):

        if self.arr is None:
            print()
            print("Please create an array first!")
            print()
            return

        while True:
            print()
            print("Compute Aggregates and Statistics")
            print("1. Sum")
            print("2. Mean")
            print("3. Median")
            print("4. Standard Deviation")
            print("5. Variance")
            print("6. Minimum")
            print("7. Maximum")
            print("8. Exit")
            print()

            choice = int(input("Enter your choice: "))
            print()

            match choice:

                case 1:
                    print()
                    print("Sum =", np.sum(self.arr))
                    print()

                case 2:
                    print()
                    print("Mean =", np.mean(self.arr))
                    print()

                case 3:
                    print()
                    print("Median =", np.median(self.arr))
                    print()

                case 4:
                    print()
                    print("Standard Deviation =", np.std(self.arr))
                    print()

                case 5:
                    print()
                    print("Variance =", np.var(self.arr))
                    print()

                case 6:
                    print()
                    print("Minimum =", np.min(self.arr))
                    print()

                case 7:
                    print()
                    print("Maximum =", np.max(self.arr))
                    print()

                case 8:
                    print()
                    print("Exiting Statistics Menu...")
                    print()
                    break

                case _:
                    print()
                    print("Invalid Choice!")
                    print()