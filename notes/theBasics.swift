// The Basics

// Constants and Variables

// Declaring Constants and Variables
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

// Type Annotations
var welcomeMessage: String

welcomeMessage = "Hello"

var red, green, blue: Double

// Naming Constants and Variables
let n = 3.14159
// const names and var names can contain almost any chr,
// including Unicode chr
let 你好 = "你好世界"  
let 🐶🐮 = "dogcow"

/* 
Constant and variable names can’t contain whitespace characters, 
mathematical symbols, arrows, private-use Unicode scalar values, 
or line- and box-drawing characters. 
Nor can they begin with a number, 
although numbers may be included elsewhere within the name.
*/

var friendlyWelcome = "Hello!
friendlyWelcome = "Bonjour!"  // change the value of an existing var

// Printing Constants and Variables
print(friendlyWelcome)

print(friendlyWelcome, terminator: "")  // equals to print(friendlyWelcome, end="")

print("The current value of friendlyWelcome is \(friendlyWelcome)")  // string interpolation

// Comments

// This is a cooment

/* This is also a comment
but is written over multiple lines */

// multiline comments can be nested
/* This is the start of the first multiline comment.
/* This is the second, nested multiline comment. */
This is the end of the first multiline comment */

// Semicolons
let cat = "🐱"; print(cat)  // required when two statements are written on one line

// Integers
/*
These integers follow a naming convention similar to C, 
in that an 8-bit unsigned integer is of type UInt8, 
and a 32-bit signed integer is of type Int32.
*/

// Integer Bounds
let minValue = UInt8.minValue
let maxValue = UInt8.max

// Int
/*
On a 32-bit platform, Int is the same size as Int32.
On a 64-bit platform, Int is the same size as Int64.
*/

// UInt
/*
On a 32-bit platform, UInt is the same size as UInt32.
On a 64-bit platform, UInt is the same size as UInt64.
*/

// Floating-Point Numbers
/*
Double represents a 64-bit floating-point number.
Float represents a 32-bit floating-point number.
*/

// Type Safety and Type Inference
let meaningOfLife = 42  // Int

let pi = 3.14159  // Double

let anotherPi = 3 + 014159  // Double

// Numeric Literals
let decimalInteger = 17
let binaryInteger = 0b10001  // bin
let octalInteger = 0o21  // oct
let hexadecimalInteger = 0x11  // hex

/*
Floating-point literals can be decimal (with no prefix), 
or hexadecimal (with a 0x prefix). 
They must always have a number (or hexadecimal number) on both sides 
of the decimal point. 

Decimal floats can also have an optional exponent, 
indicated by an uppercase or lowercase e; 
hexadecimal floats must have an exponent, 
indicated by an uppercase or lowercase p.

For hexadecimal numbers with an exponent of exp, 
the base number is multiplied by 2^exp:
0xFp2 means 15 x 22, or 60.0.
0xFp-2 means 15 x 2-2, or 3.75.
*/
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecinalDouble = 0xC.3p0

/*
Numeric literals can contain extra formatting to make them easier to read. 
Both integers and floats can be padded with extra zeros 
and can contain underscores to help with readability. 
Neither type of formatting affects the underlying value of the literal
*/
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Numeric Type Conversion

// Integer Conversion
let cannotBeNegative: UInt8 = -1  // error
let tooBgi: Int8 = Int8.max + 1  // error

/*
To convert one specific number type to another, 
you initialize a new number of the desired type with the existing value. 
*/
let twoThousand:UInt16 = 2_000
let one:UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)  // UInt8 and UInt16: diff type

// Integer and Floating-Point Conversion
// int -> float must be made explicit
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine  // notice that 3 is converted to float explicitly

let integerPi = Int(pi)  // 3

/*
The rules for combining numeric constants and variables 
are different from the rules for numeric literals. 
The literal value 3 can be added directly to the literal value 0.14159, 
because number literals don’t have an explicit type in and of themselves. 
Their type is inferred only at the point that they’re evaluated by the compiler.
*/

// Type Aliases
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.minValue

// Booleans
let orangeAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
	print("Mmm, tasty turnips!")
} else {
print("Eww, turnips are horrible.")
}

/*
wrong
let i = 1
if i {
// this example will not compile, and will report an error
}
*/

let i = 1
if i == 1 {
// this example will compile successfully
}

// Tuples
let http404Error = (404, "Not Found")

// decompose
let (statusCode, statusMessage) = http404Error  // notice the () on the left of the '='
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

/*
If you only need some of the tuple’s values, 
ignore parts of the tuple with an underscore (_) when you decompose the tuple
*/
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

// index
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

/*
You can name the individual elements in a tuple when the tuple is defined
*/
let http200Status = (StatusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

// Optionals
/*
Swift’s Int type has an initializer which 
tries to convert a String value into an Int value
*/

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)  // convertedNumber: Int?

// nil
var serverResponseCode: Int? = 404
serverResponseCode = nil  // set an optional var to a valueless state

/*
If you define an optional variable without providing a default value, 
the variable is automatically set to nil for you
*/
var surveyAnswer: String?  // nil

/*
Swift’s nil isn’t the same as nil in Objective-C. 
In Objective-C, nil is a pointer to a nonexistent object. 
In Swift, nil isn’t a pointer—it’s the absence of a value of a certain type. 
Optionals of any type can be set to nil, not just object types
*/

// If Statements and Forced Unwrapping
/* use an if statement to find out whether an optional contains a value 
by comparing the optional against nil */
if convertedNumber != nil {
	print("convertedNumber contains some integer value.")
}

/* Once you’re sure that the optional does contain a value, 
you can access its underlying value by adding an exclamation mark (!) 
to the end of the optional’s name. 
*/
if convertedNumber != nil {
	print("convertedNumber has an integer value of \(convertedNumber!)")
}

// Optinal Binding
/*
Optional binding can be used with if and while statements to 
check for a value inside an optional, and to extract that value into a constant or variable, 
as part of a single action
*/
if let actualNumber = Int(possibleNumber) {
	print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
	print("The string \"(possibleNumber)\" could not be converted to an integer")
	
/*
You can include as many optional bindings and Boolean conditions in a single 
if statement as you need to, separated by commas
*/
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
	print("\(firstNumber) < \(secondNumber) < 100")
}
// which is equivalent to
if let firstNumber = Int("4") {
	if let secondNumber = Int("42") {
		if firstNumber < secondNumber && secondNumber < 100 {
			print("\(firstNumber) < \(secondNumber) < 100")
		}
	}
}

// Implicitly Unwrapped Optionals
/*
Sometimes it’s clear from a program’s structure that 
an optional will always have a value, after that value is first set. 
In these cases, it’s useful to remove the need to check and unwrap the optional’s value every time it’s accessed, 
because it can be safely assumed to have a value all of the time
*/

/*
You write an implicitly unwrapped optional by placing an exclamation mark (String!) 
rather than a question mark (String?) after the type that you want to make optional
*/

/*
An implicitly unwrapped optional is a normal optional behind the scenes, 
but can also be used like a non-optional value, without the need to 
unwrap the optional value each time it’s accessed
*/
let possibleString: String? = "An optional string."
let forcedString: String = possibleString!  // a ! required

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString  // a ! not required

/* You can still treat an implicitly unwrapped optional like a normal optional, 
to check if it contains a value
*/
if assumedString != nil {
	print(assumedString!)
}

/*
You can also use an implicitly unwrapped optional with optional binding, 
to check and unwrap its value in a single statement
*/
if let definiteString = assumedString {
	print(definiteString)
}

// Error Handling
func canThrowAnError() throws {
// this function may or may not throw an error
}

/*
A function indicates that it can throw an error by 
including the throws keyword in its declaration. 
When you call a function that can throw an error, 
you prepend the try keyword to the expression.
Swift automatically propagates errors out of their current scope 
until they’re handled by a catch clause
*/
do {
	try canThrowAnError()
	// no error was thrown
} catch {
	// an error was thrown
}

/*
A do statement creates a new containing scope, 
which allows errors to be propagated to one or more catch clauses
*/
func makeASandwich() throws {
// ...
}

do 
{
	try makeASandwich()
	eatASandwich()
} 
catch SandwichError.outOfCleanDishes
{
	washDishes()
}
catch SandwichError.missingIngredients(let ingredients)
{
	buyGroceries(ingredients)
}

// Assertions and Preconditions
/*
Assertions and preconditions are checks that happen at runtime. 
You use them to make sure an essential condition is satisfied 
before executing any further code. 
If the Boolean condition in the assertion or precondition evaluates to true, 
code execution continues as usual. If the condition evaluates to false, 
the current state of the program is invalid; code execution ends, and your app is terminated
*/

/*
Assertions help you find mistakes and incorrect assumptions during development, 
and preconditions help you detect issues in production
*/

/*
The difference between assertions and preconditions is in when they’re checked: 
Assertions are checked only in debug builds, but preconditions are checked 
in both debug and production builds. 
In production builds, the condition inside an assertion isn’t evaluated. This means you can use as many assertions as you want during your development process, without impacting performance in production
*/

// Debugging with Assertions
let age = -3
assert(age >= 0, "A person's age can't be less than zero.")

// omit the assertion message
assert(age >= 0)

/*
If the code already checks the condition, 
you use the assertionFailure(_:file:line:) function to 
indicate that an assertion has failed
*/
if age > 10 {
	print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
	print("You can ride the feris wheel.")
} else {
assertionFailure("A person's age can't be less than zero.")

// Enforcing Preconditions
/*
Use a precondition whenever a condition has the potential to be false, 
but must definitely be true for your code to continue execution
*/
precondition(index > 0, :Index must be greater than zero.")

/*
You can also call the preconditionFailure(_:file:line:) function to 
indicate that a failure has occurred—for example, 
if the default case of a switch was taken, 
but all valid input data should have been handled by one of the switch’s other cases
*/
