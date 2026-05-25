# Personal Data Intake Form

A simple Python program that collects personal information from the user and displays the data type, memory address, and estimated birth year.

---

## 📌 Features

- Takes user input for:
  - Name
  - Age
  - Height
  - Favourite Number
- Displays:
  - Data type of each input
  - Memory address using `id()`
  - Approximate birth year

---

## 🖥️ Python Code

```python
print("WELCOME TO THE PERSONAL DATA INTAKE FORM !")
print()

D = input("please enter your name:-")
A = int(input("please enter your age:-"))
B = float(input("please enter your height in meters:-"))
C = int(input("please enter your favourite number:-"))
print()

print("THANK YOU", end="!")
print("HERE IS THE INFORMATION WE COLLECTED:")
print()

print(input(f"NAME:{D}"))
print("type:", type(D))
print("memory address:", id(D))
print()

print(input(f"NAME:{A}"))
print("type:", type(A))
print("memory address:", id(A))
print()

print(input(f"NAME:{B}"))
print("type:", type(B))
print("memory address:", id(B))
print()

print(input(f"NAME:{C}"))
print("type:", type(C))
print("memory address:", id(C))
print()

print("your birth year is approximately:", +2026 - A)
print()

print("THANK YOU FOR USING THE PERSONAL DATA INTAKE FORM.")
print("GOODBYE !")
```

---

## ▶️ Example Output

```text
WELCOME TO THE PERSONAL DATA INTAKE FORM !

please enter your name:- Krina
please enter your age:- 18
please enter your height in meters:- 1.65
please enter your favourite number:- 7

THANK YOU!HERE IS THE INFORMATION WE COLLECTED:

NAME:Krina
type: <class 'str'>
memory address: 140245689

NAME:18
type: <class 'int'>
memory address: 9786336

NAME:1.65
type: <class 'float'>
memory address: 140245670

NAME:7
type: <class 'int'>
memory address: 9785984

your birth year is approximately: 2008

THANK YOU FOR USING THE PERSONAL DATA INTAKE FORM.
GOODBYE !
```

---

## 🚀 How to Run

1. Save the file as `main.py`
2. Open terminal or command prompt
3. Run the program:

```bash
python main.py
```

---

## 📚 Concepts Used

- `input()`
- Data Types (`str`, `int`, `float`)
- `type()`
- `id()`
- Formatted Strings (`f-string`)
- Print Formatting
