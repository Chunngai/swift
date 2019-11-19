/* Terminology */

/* Assignment Operator */
let b = 10
var a = 5
a = b

let (x, y) = (1, 2)

/*
if x = y {
	// ...
}
*/

/* Arithmetic Operators */
1 + 2
5 - 3
2 * 3
10.0 / 2.5

"hello, " + "world"

// Remainder Operator
9 % 4

-9 % 4

// Unary Minus Operator
let three = 3
let minusThree = -three
let plusThree = -minusThree

// Unary Plus Operator
let minusSix = -6
let alsoMinusSix = +minusSix

/* Compound Assignment Operators */
var a = 1
a += 2

// let b = a += 2

/* Comparison Operators */
1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

let name = "world"
if name == "world" {
	print("hello, world")
} else {
	print("I'm sorry \(name), but I don't recognize you")
}

(1, "zebra") < (2, "apple")
(3, "apple") < (3, "bird")
(4, "dog") == (4, "dog")

("blue", -1) < ("purple", 1)
// ("blue", false) < ("purple", true)

/* Ternary Conditional Operator */
if question {
	answer 1
} else {
	answer 2
}

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

let contentHeight = 40
let hasHeader = true
let rowHeight: Int
if hasHeader {
	rowHeight = contentHeight + 50
} else {
	rowHeight = contentHeight + 20
}

/* Nil-Coalescing Operator */
let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName

/* Range Operators */
// Closed Range Operators
for index in 1...5 {
	print("\(index) times 5 is \(index * 5)")
}

// Half-Open Range Operator
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
	print("Person \(i + 1) is called \(names[i])")
}

// One-Sided Ranges
for name in names[2...] {
	print(name)
}

for name in names[...2] {
	print(name)
}

for name in names[..<2] {
	print(name)
}

let range = ...5
range.contains(7)
range.contains(4)
range.contains(-1)

/* Logical Operators */
// Logical NOT Operator
let allowedEntry = false
if !allowedEntry {
	print("ACCESS DENIED")
}

// Logical AND Operator
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
	print("Welcome")
} else {
	print("ACCESS DENIED")
}

// Logical OR Operator
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
	print("Welcome")
} else {
	print("ACCESS DENIED")
}

// Combining Logical Operators
if enteredDoorCode && passedRetinaScan || hasDoorKey ||
		knowsOverridePassword {
	print("Welcome")
} else {
	print("ACCESS DENIED")
}

// Explicit Parentheses
if (enteredDoorCode && passedRetinaScan) || hasDoorKey ||
		knowsOverridePassword {
	print("Welcome")
} else {
	print("ACCESS DENIED")
}