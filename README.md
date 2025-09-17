# SwiftProblems

A collection of Data Structures and Algorithms (DSA) problems implemented in Swift.
This repository contains solutions to small problem statements, along with clear explanations and methods for learning and practicing problem-solving skills in Swift.

📌 Features

🚀 Beginner-friendly problems in Swift.

🧩 Covers basic to intermediate DSA topics (arrays, strings, recursion, sorting, searching, etc.).

📖 Each file contains problem statement + solution.

🛠 Different approaches and methods are provided where possible.



🎯 How to Run

Clone the repo

git clone https://github.com/your-username/SwiftProblems.git
cd SwiftProblems

Open any .swift file in Xcode or run it using the Swift command-line:

swift Arrays/ReverseArray.swift

📝 Contributing

Contributions are welcome! 🎉
If you’d like to add new problems or improve existing solutions:

Fork the repo

Create a new branch

Add your problem + solution in the right folder

Submit a Pull Request

📖 Topics Covered

Arrays

Strings

Recursion

Sorting & Searching

Basic Math Problems

Swift Language Features (enums, optionals, property wrappers, etc.)


📌 Purpose

This repo is mainly for:

Practicing DSA with Swift.

Preparing for coding interviews.

Building problem-solving skills with simple, clear examples.

## ⚡ Example  

**Problem:** Reverse a number  

```swift
func reverseNumber(_ num: Int) -> Int {
    var number = num
    var reversed = 0
    while number != 0 {
        let digit = number % 10
        reversed = reversed * 10 + digit
        number /= 10
    }
    return reversed
}

print(reverseNumber(-96734)) // Output: -43769
