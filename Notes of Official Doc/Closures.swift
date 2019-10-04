// Closures

// Closure Expressions

// The Sorted Method
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

/*
The sorted(by:) method accepts a closure that 
takes two arguments of the same type as the array’s contents, 
and returns a Bool value to say 
whether the first value should appear before or after the second value 
once the values are sorted. 
The sorting closure needs to return true 
if the first value should appear before the second value, and false otherwise.
*/
func backward(_ s1: String, _ s2: String) -> Bool {
return s1 > s2
}
var reversedNames = names.aorted(by: backward)

// Closure Expression Syntax
/*
The parameters in closure expression syntax 
can be in-out parameters, but they can’t have a default value. 
Variadic parameters can be used if you name the variadic parameter. 
Tuples can also be used as parameter types and return types.
*/

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
return s1 > s2
} )

// Inferring Type From Context
/*
Because the sorting closure is passed as an argument to a method, 
Swift can infer the types of its parameters and the type of the value it returns.
The sorted(by:) method is being called on an array of strings, 
so its argument must be a function of type (String, String) -> Bool. 
This means that the (String, String) and Bool types 
do not need to be written as part of the closure expression’s definition. 
Because all of the types can be inferred, 
the return arrow (->) and the parentheses around the names of the parameters 
can also be omitted:
*/
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )

// Implicit Returns from Single-Expression Closures
/*
Single-expression closures can implicitly return the result of their single expression 
by omitting the return keyword from their declaration
*/
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )


// Shorthand Argument Names
reversedNames = names.sorted(by: { $0 > $1 } )

// Operator Methods
reversedNames = names.sorted(by: >)

// Trailing Closures
func someFunctionThatTakesAclousure(closure: () -> Void) {
...
}

someFunctionThatTakesAclousure(closure: {
...
} )

someFunctionThatTakesAclousure() {
// trailing closure's body goes here
}

reversedNames = names.sorted() { $0 > $1 }

/*
If a closure expression is provided as the function or method’s only argument 
and you provide that expression as a trailing closure, 
you do not need to write a pair of parentheses () 
after the function or method’s name when you call the function
*/
reversedNames = names.sorted { $0 > $1 }

// map
let digitNames [
0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 
5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine" 
]
let numbers = [16, 58, 510]

let Strings = numbers.map { (number) -> String in 
var number = number
var output = ""
repeat {
output = digitNames[number % 10]! + output
number /= 10
} while number > 0
return output
}

// Capturing Values
/*
A closure can capture constants and variables from the surrounding context 
in which it is defined. 
The closure can then refer to and modify the values of those constants and variables 
from within its body, even if the original scope that 
defined the constants and variables no longer exists.
*/
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
var runningTotal = 0
func incrementer() -> Int {
runningTotal += amount
return runningTotal
}
return incrementer
}
/*
The incrementer() function doesn’t have any parameters, 
and yet it refers to runningTotal and amount from within its function body. 
It does this by capturing a reference to runningTotal and amount 
from the surrounding function 
and using them within its own function body. 
Capturing by reference ensures that 
runningTotal and amount do not disappear 
when the call to makeIncrementer ends, 
and also ensures that runningTotal is available 
the next time the incrementer function is called.
*/

/*
As an optimization, Swift may instead capture and store a copy of a value 
if that value is not mutated by a closure, 
and if the value is not mutated after the closure is created.
*/

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen() // 10
incrementByTen() // 20
incrementByTen() // 30

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven() // 7

incrementByTen() // 40

// Closures are Reference Types
/*
functions and closures are reference types
*/
 let alsoIncrementByTen = incrementByTen
 alsoIncrementByTen() // 50
 incrementByTen() // 60
 
// Escaping Closures
// UNREAD

// Autoclosures
/*
An autoclosure is a closure 
that is automatically created to wrap an expression 
that’s being passed as an argument to a function.
It doesn’t take any arguments, and when it’s called, 
it returns the value of the expression that’s wrapped inside of it.
*/

/*
An autoclosure lets you delay evaluation, 
because the code inside isn’t run until you call the closure.
*/
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count) // 5
let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count) // 5
print("Now serving \(customerProvider())!")
print(customersInLine.count) // 4

// the same behavior
func serve(customer customerProvider: () -> String) {
print("Now serving \(customerProvider())!")
}
serve(customer: { customersInLine.remove(at: 0) } )

// equivalent to
func serve(customer customerProvider: @autoclosure () -> String) {
print("Now serving \(customerProvider())!")
}
serve(customer: customersInLine.remove(at: 0) )
