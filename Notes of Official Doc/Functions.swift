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