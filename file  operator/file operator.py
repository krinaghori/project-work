import operator as op
from datetime import datetime

class JournalManager :
    def __init__(self):
       self.filename = "journal.txt"

    def add_entry(self):
        try:   
           text = input("Enter Your journal entry:")  

           with open(self.filename,"a") as f:
             f.write("Date & Time: " + str(datetime.now()))
             f.write(text +"\n")
           print("Entry added successfully!")


        except Exception as e:
            print("Error :--------", e)   

    def view_entries(self):
        try:
            with open(self.filename,"r") as f:
               print("Journal Entries:")
               print(f.read())

        except FileNotFoundError:
            print("Error : No journal entries found.Start by adding a new entry!")  

    def search_entry(self):
        try:
            word = input("Enter keyword to search: ")
            found = False

            with open(self.filename, "r") as f:
                for line in f:
                    if word.lower() in line.lower():
                        print(line.strip())
                        found = True

            if not found:
                print("No matching entry found.")

        except FileNotFoundError:
            print("Error : Journal file does not exist.")


    def delete_entries(self):
          try:
            if not op.path.exists(self.filename):
                print("No journal entries to delete.")
                return

            confirm = input( "Are you sure you want to delete all entries? (yes/no): ")

            if confirm.lower() == "yes":
                op.remove(self.filename)
                print("All journal entries have been deleted.")
            else:
                print("Deletion cancelled.")

          except PermissionError:
             print("Permission denied while deleting the file.")

          except Exception as e:
             print("Error:", e)
        
j = JournalManager()
print()
print("--- Personal Journal Manager ---")
print()

while True:
      
      print("1. Add Entry")
      print("2. View Entries")
      print("3. Search Entry")
      print("4. Delete All Entries")
      print("5. Exit")
      print()

      choice = input("Enter choice: ")
      print()

      match choice:
        case "1":
            j.add_entry()
            print()

        case "2":
            j.view_entries()
            print("---------------------------")
            print()

        case "3":
            j.search_entry()
            print()

        case "4":
            j.delete_entries()
            print()

        case "5":
            print("Thank You!")
            print()
            break

        case _:
            print("Invalid Choice!")  
            print() 
             