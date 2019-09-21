// Basic Operators

// Terminology

// Assignment Operator
// decompose
let (x, y) = (1, 2)

/*
Unlike the assignment operator in C and Objective-C, 
the assignment operator in Swift does not itself return a value.
*/
if x = y {
// not valid
}

// Arithmetic Operators
// +: also supports string concatenation
"hello, " + "world"

// Remainder Operator
/*
The sign of b is ignored for negative values of b. 
This means that a % b and a % -b always give the same answer
*/

// Unary Minus Operator
let three = 3
let minusThree = -three
let plusThree = -minusThree

// Unary Plus Operator
let minusSix
let alsoMinusSix = +minusSix  // -6

// Compound Assignment Operators
var a = 1
a += 2

/*
The compound assignment operators don’t return a value. 
For example, you can’t write let b = a += 2
*/

// Comparison Operators
/*
Swift also provides two identity operators (=== and !==), 
which you use to test whether two object references both refer to the same object instance
*/

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

(1, "zebra") < (2, "apple")  // true. 1 < 2, and "zebra" < "apple" is not compared
(3, "apple") < (3, "bird")   // true
(4, "dog") == (4, "dog")  // true

/*
The Swift standard library includes tuple comparison operators for tuples with fewer than seven elements. To compare tuples with seven or more elements, you must implement the comparison operators yourself
*/


// Ternary Conditional Operator
if question {
answer1
} else {
answer2
}

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
// equivalent to
let contentHeight = 40
let hasHeader = true
let rowHeight: Int
if hasHeader {
rowHeight = contentHeight + 50
} else {
rowHeight = contentHeight + 20
}

// Nil-Coalescing Operator
// short-circuit
/*
The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value, 
or returns a default value b if a is nil. 
The expression a is always of an optional type. 
The expression b must match the type that is stored inside a
*/

/*
The nil-coalescing operator is shorthand for the code below

1.	a != nil ? a! : b
*/

let defaultColorName = "red"
var userDefinedColorName: Sting?
var colorNameToUse = userDefinedColorName ?? defaultColorName  // red

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName  // green

// Range Operators

// Closed Range Operator
for index in 1...5 {
print("\(index) times 5 is \(index * 5)")
}

// Half-Open Range Operator
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
print("Person \(i+1) is called \(names[i])")
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

/*
One-sided ranges can be used in other contexts, not just in subscripts. 
You can’t iterate over a one-sided range that omits a first value, 
because it isn’t clear where iteration should begin. 
You can iterate over a one-sided range that omits its final value; 
however, because the range continues indefinitely, 
make sure you add an explicit end condition for the loop. 
You can also check whether a one-sided range contains a particular value
*/
let range = ...5
range.contains(7)
range.contains(4)
range.contains(-1)

// Logical Operators

// Logical Not Operator
let allowedEntry = false
if !allowedEntry {
print("ACCESS DENIED")
}

// Logical AND Operator
// short-circuit
let enteredDoorCode = true
let passedRetinaScan = falseif enteredDoorCode && passedRetinaScan {
print("Welcome!")
} else {
print("ACCESS DENIED")
}

// Logical OR Operator
// short-circuit
let hasDoorKey || knowsOverridePassword {
print("Welcome!")
} else {
print("ACCESS DENIED")
}

// Combining Logical Operators
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
print("Welcome!")
} else {
print("ACCESS DENIED")

/*
The Swift logical operators && and || are left-associative, 
meaning that compound expressions with multiple logical operators 
evaluate the leftmost subexpression first
*/

// Explicit Parentheses
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
print("Welcome!")
} else {
print("ACCESS DENIED")
}