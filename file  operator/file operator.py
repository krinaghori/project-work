import os

class JournalManager :
    def __init__(self):
       self.filename = "journal.txt"

    def add_entry(self):
           text = input("Enter Your journal entry:")  
           with open(self.filename,"a") as f:
             f.write(text +"\n")
           print("Entry added successfully!")

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
        if os.path.exists(self.filename):
            ch = input("Delete all entries? (yes/no): ")
            if ch.lower() == "yes":
                os.remove(self.filename)
                print("All entries deleted.")
            else:
                print("Deletion cancelled.")
        else:
            print("Error  : No journal file found.")

j = JournalManager()



while True:
      print()
      print("--- Personal Journal Manager ---")
      print()
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
             