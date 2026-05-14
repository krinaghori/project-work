# 📝 Personal Data Intake Form

This is a simple Python program that collects personal information from the user using input statements.

The program asks for:
- Name
- Age
- Height
- Favourite Number

It also:
- Displays the data type of inputs
- Displays memory addresses using `id()`
- Calculates approximate birth year

---

## 📌 Python Code

```python
print("WELCOME TO THE PERSONAL DATA INTAKE FORM !")
print()

input("please enter your name:-")
print("type:",type("please enter your name:-"))
print("memory address:",id("please enter your name:-"))
print()

A = int(input("please enter your age:-"))
print("type:",type(A))
print("memory address:",id(A))
print()

B = float(input("please enter your height in meters:-"))
print("type:",type(B))
print("memory address:",id(B))
print()

C = int(input("please enter your favourite number:-"))
print("type:",type(C))
print("memory address:",id(C))
print()

print("your birth year is approximately:",+2026-A)
print()

print("THANK YOU FOR USING THE PERSONAL DATA INTAKE FORM.")
print("GOODBYE !")
```

---

## ▶️ How to Run

1. Install Python
2. Save the file as `main.py`
3. Open terminal or command prompt
4. Run:

```bash
python main.py
```

---

## 💻 Example Output

```text
WELCOME TO THE PERSONAL DATA INTAKE FORM !

please enter your name:- Krina

please enter your age:- 18
type: <class 'int'>

please enter your height in meters:- 1.65
type: <class 'float'>

please enter your favourite number:- 7
type: <class 'int'>

your birth year is approximately: 2008

THANK YOU FOR USING THE PERSONAL DATA INTAKE FORM.
GOODBYE !
```

---

## 📚 Concepts Used

- `input()`
- `print()`
- `type()`
- `id()`
- Integer and Float Conversion
- Variables

---

## 👩‍💻 Author

Krina Ghori
