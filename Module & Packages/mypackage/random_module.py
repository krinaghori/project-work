import random

def random_num():
    print()
    num = random.randint(1, 100)
    print("Random Number =", num)
    print() 

def random_list():
    n = int(input("How many numbers? "))
    print()
    random_list = []
    for i in range(n):
       random_list.append(random.randint(1, 100))
                                                   
    print("Random List:",random_list )
    print() 

def random_password():
    print()
    import random
    import string
    print()
    length = int(input("Enter Password Length :"))
    print()
    chars = string.ascii_letters + string.digits + string.punctuation
    password = ""
    for i in range(length):
         password += random.choice(chars)
    print("Random Password:",password)
    print()   

def random_OTP():
    print()
    import random
    print("Your OTP :",random.randint(100000, 999999))
    print()            