// Functions

// Defining and Calling Functions
func greet(person: String) -> String {
let greeting = "Hello, " + person + "!"
return greeting
}

print(greet(person: "Anna"))
print(greet(person: "Brian"))

func greetAgain(person: String) -> String {
return "Hello again, " + person + "!"
}

// Function Parameters and Return Values

// Functions Without Parameters
func sayHelloWorld() -> String {
return "Hello, world"
}
print(sayHelloWorld())

// Functions With Multiple Parameters
func greet(person: String, alreadyGreeted: Bool) -> String {
if alreadyGreeted {
return greetAgain(person: person)
} else {
return greet(person: person)
}
}
print(greet(person: "Tim", alreadyGreeted: true))

// Functions Without Return Values
func greet(person: String) {
print("Hello, \(person)!")
}
greet(person: "Dave")

/*
Strictly speaking, this version of the greet(person:) function 
does still return a value, 
even though no return value is defined. 
Functions without a defined return type 
return a special value of type Void. 
This is simply an empty tuple, which is written as ().
*/

// the return value can be ignored
func printAndCount(string: String) -> Int {
print(string)
return string.count
}
func printWithoutCounting(string: String) {
let _ = printAndCount(string: string)
}
printAndCount(string: "hello, world")
printWithoutCounting(string: "hello, world")

// Functions with Multiple Return Values
func minMax(array: [Int]) -> (min: Int, max: Int) {
var currentMin = array[0]
var currentMax = array[0]
for value in array[1..<array.count] {
if value < currentMin {
currentMin = value
} else if value > currentMax {
currentMax = value
}
}
return (currentMin, currentMax)
}

/*
Because the tuple’s member values are named 
as part of the function’s return type, 
they can be accessed with dot syntax 
to retrieve the minimum and maximum found values
*/
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")

// Optional Tuple Return Types
func minMax(array: [Int]) -> (min: Int, max: Int)? {
if array.isEmpty { return nil }
var currentMin = array[0] 
var currentMax = array[0] 
for value in array[1..<array.count] { 
if value < currentMin { 
currentMin = value 
} else if value > currentMax { 
currentMax = value 
} 
} 
return (currentMin, currentMax) 
} 

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
print("min is \(bounds.min) and max is \(bounds.max)")
}

// Functions With an Implicit Return
/*
If the entire body of the function is a single expression, 
the function implicitly returns that expression.
*/
func greeting(for person: String) -> String {
"Hello, " + person + "!"
}
print(greeting(for: "Dave"))
// equivalent to
func anotherGreeting(for person: String) -> String {
return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Dave"))

// Function Argument Labels and Parameter Names
/*
Each function parameter has both an argument label and a parameter name. 
The argument label is used when calling the function; 
each argument is written in the function call 
with its argument label before it. 
The parameter name is used in the implementation of the function. 
By default, parameters use their parameter name as their argument label.
*/
func someFunction(firstParameterName: Int, secondParameterName: Int) {
// In the function body, firstParameterName and secondParameterName
// refer to he arg values for the first and second parameters
}
someFunction(firstParameterName: 1, secondParameterName: 2)
/*
All parameters must have unique names. 
Although it’s possible for multiple parameters to have the same argument label, 
unique argument labels help make your code more readable.
*/

// Specifying Argument Labels
func someFunction(argumentLabel parameterName: Int) {
// ...
}

func greet(person: String, from hometown: String) -> String {
return "Hello \(person)! Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))

// Omitting Argument Labels
func someFunction{_ firstParameterName: Int, secondParameterName: Int) {
// ...
}
someFunction(1, secondParameterName: 2)

// Default Parameter Values
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
// ...
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6)
someFunction(parameterWithoutDefault: 4)
/*
Place parameters that don’t have default values 
at the beginning of a function’s parameter list, 
before the parameters that have default values.
*/

// Variadic Parameters
/*
The values passed to a variadic parameter are made available 
within the function’s body as an array of the appropriate type. 
For example, a variadic parameter with a name of numbers and a type of Double... 
is made available within the function’s body as a constant array 
called numbers of type [Double].
*/
func arithmeticMean(_ numbers: Double...) -> Double {
var total: Double = 0
for number in numbers {
total += number
}
return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25, 18.75)

/*
A function may have at most one variadic parameter.
*/

// In-Out Parameters
/*
Function parameters are constants by default.
*/
/*
You can only pass a variable as the argument for an in-out parameter. 
You cannot pass a constant or a literal value as the argument, 
because constants and literals cannot be modified. 
*/
/*
In-out parameters cannot have default values, 
and variadic parameters cannot be marked as inout.
*/
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
let temporary = a
a = b
b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

// Function Types
/*
Every function has a specific function type, 
made up of the parameter types and the return type of the function.
*/
func addTwoInts(_ a: Int, _ b: Int) -> Int {
return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
return a * b
}

func printHelloWorld() {
print("hello, world")
}

// Using Function Types
/*
You use function types just like any other types in Swift. 
For example, you can define a constant or variable to be of a function type 
and assign an appropriate function to that variable
*/
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")

mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")

/*
As with any other type, you can leave it to Swift to infer the function type 
when you assign a function to a constant or variable
*/
let anotherMathFunction = addTwoInts

// Function Types as Parameter Types
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

// Function Types as Return types
func stepForward(_ input: Int) -> Int {
return input + 1
}
func stepBackward(_ input: Int) -> Int {
return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
/*
A reference to the returned function is stored 
in a constant called moveNearerToZero.
*/

print("Counting to zero:")
while currentValue != 0 {
print("\(currentValue)...")
currentValue = moveNearerToZero(currentValue)
}
print("zero!")

// Nested Functions
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
func stepForward(input: Int) -> Int { return input + 1 }
func stepBackward(input: Int) -> Int { return input - 1 }
return backward ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
while currentValue != 0 {
print("\(currentValue)... ")
currentValue = moveNearerToZero(currentValue)
}
print("zero!")