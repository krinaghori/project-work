def file_create():
    print()
    filename = input("Enter file name: ")
    print()
    open(filename, "w").close()
    print("File created successfully!")
    print()

def file_write():
    print()
    filename = input("Enter file name: ")
    data = input("Enter data to write: ")
    print()
    with open(filename, "w") as f:
      f.write(data)
    print("Data written successfully!")
    print()

def file_read():
    print()
    filename = input("Enter file name: ")
    print()
    try:
       with open(filename, "r") as f:
        print("File Content:")
        print()
        print(f.read())
    except FileNotFoundError:
        print()
        print("File does not exist!")
        print()    

def file_append():
    print()
    filename = input("Enter file name: ")
    data = input("Enter data to append: ")
    print()
    with open(filename, "a") as f:
        f.write("\n" + data)
    print("Data appended successfully!")
    print()