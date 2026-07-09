from analyzer.array_manager import DataAnalytics
from analyzer.math_operations import DataAnalytics2
from analyzer.combine_split_arrays import DataAnalytics3
from analyzer.search_sort_filter import DataAnalytics4
from analyzer.compute_statistics import DataAnalytics5



obj = DataAnalytics()
obj2 = DataAnalytics2()
obj3 = DataAnalytics3()
obj4 = DataAnalytics4()
obj5 = DataAnalytics5()

while True:
    print()
    print("===== NumPy Analyzer =====")
    print()
    print("1. Create a NumPy Array")
    print("2. Perform Mathematical Operations")
    print("3. Combine or Split Arrays")
    print("4. Search, Sort, or Filter Arrays")
    print("5. Compute Aggregates and Statistics")
    print("6. Exit")
    print()

    choice = int(input("Enter your choice: "))
    print()

    match choice:

        case 1:
            obj.create_array()
        case 2:
            obj2.arr = obj.arr
            obj2.mathematical_operations()
        case 3:
            obj3.arr = obj.arr
            obj3.combine_split_arrays()
        case 4:
            obj4.arr = obj.arr
            obj4.search_sort_filter()


        case 5:
            obj5.arr = obj.arr
            obj5.compute_statistics()
            
        case 6:
            print()
            print("Thank you for using the NumPy Analyzer!")
            print()
            break

        case _:
            print()
            print("This option is not added yet.") 
            print()