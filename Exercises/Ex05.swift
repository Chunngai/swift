import UIKit

// 3.12 3.19 3.31
// 5.35 5.43
print("Exercise 5\n")

// 3.12
print("Question 3.12")


let threeDigitsIntegerList = ["121", "123"]
for integerString in threeDigitsIntegerList {
    var isPalindrome = true
    
    for i in 0...integerString.count / 2 {
        if integerString[integerString.index(integerString.startIndex, offsetBy: i)] != integerString[integerString.index(integerString.endIndex, offsetBy: -i - 1)] {
            isPalindrome = false
            // (1) string[i] in python -> string[string.index(string.startIndex, offsetBy: i)]
            //     string[len(string) - i - 1] -> string[string.index(string.endIndex, offsetBy: -i -1)]
        }
    }
    
    if isPalindrome == true {
        print("\(integerString) is a palindrome")
    } else {
        print("\(integerString) is not a palindrome")
    }
}

print()

// 3.19
print("Question 3.19")

let sidesListA = [2, 3, 3]
let sidesListB = [1, 1, 2]
for sidesList in [sidesListA, sidesListB] {
    if sidesList[0] + sidesList[1] > sidesList[2] &&
        sidesList[0] + sidesList[2] > sidesList[1] &&
        sidesList[1] + sidesList[2] > sidesList[0] {
            print("The perimeter of the triangle is \(sidesList[0] + sidesList[1] + sidesList[2])")
    } else {
        print("The input is not valid")
    }
}

print()

// 3.31
print("Question 3.31")

let inputList = [["rate": 6.81, "mode": 0, "amount": 100],
                 ["rate": 6.81, "mode": 1, "amount": 100_00],
                 ["rate": 6.81, "mode": 5, "amount": -1]]

for input in inputList {
    if input["mode"] == 0 { // (2) '!' is not always required for a dict value retrieved by its key in an if condition
        print("$\(input["amount"]!) is \(input["rate"]! * input["amount"]!) yuan")
    } else if input["mode"]! == 1 {
        print("\(input["amount"]!) yuan is $\(input["amount"]! / input["rate"]!)")
    } else {
        print("Incorrect input")
    }
}

print()

// 5.35
print("Question 5.35")

var i: Double = 1
var sum: Double = 0

while i < 625 {
    sum += i / (i + sqrt(i + 1)) // (3) if i is an int, it cannot be added directly with sqrt(i + 1)
                                 // (4) sqrt() requires a floating-point num as a parameter
    i += 1
}
print(sum)

print()

// 5.43
print("Question 5.42")

var total = 0
for i in 1...6 {
    for j in (i + 1)...7 {
        print(i, j) // (4) 1...1 is not valid
        total += 1
    }
}
print(total)

print()

// Experiments
print("Experiments")

let i_1 = 3
// (1) let j_1 = i_1 + 0.1: wrong. int -> float / double must be made explicit

let i_2 = 3.0
let j_2 = i_2 + 1 // (2) valid when add a double var with an int literal

let i_3_1 = 3.0
let i_3_2 = 1
// (3) let j_3 = i_3_1 + i_3_2: wrong. the int var must be converted explicitly to a double var to make the addition


