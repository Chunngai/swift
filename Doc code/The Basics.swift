/* Constants and Variables */
// Declaring Constants and Variables
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

/* Type Annotations */
var welcomeMessage: String

welcomeMessage = "Hello"

var red, green, blue: Double

/* Naming Constants and Variables */
let n = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

// let languageName = "Swift"
// languageName = "Swift++"

/* Printing Constants and Variables */
print(friendlyWelcome)

print("The current value of friendlyWelcome is \(friendlyWelcome)")

/* Comments */
// This is a comment

/* This is also a comment
but is written over multiple lines */

/* This is the start of the first multiline comment.
/* This is the second, nested multiline comment. */
This is the end of the first multiline comment. */

/* Semicolons */
let cat = "🐱"; print(cat)

/* Integers */
// Integer Bounds
let minValue = UInt8.min
let maxValue = UInt8.max

// Int

// UInt

/* Floating-Point Numbers */

/* Type Safety and Type Inference */
let meaningOfLife = 42

let pi = 3.14159

let anotherPi = 3 + 0.14159

/* Numeric Literals */
let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

/* Numeric Type Conversion */
// Integer Conversion
// let cannotBeNegative: UInt8 = -1
// let tooBig: Int8 = Int8.max + 1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

// Integer and Floating-Point Conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi)

/* Type Aliases */
typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.min

/* Booleans */
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
	print("Mmm, tasty turnips!")
} else {
	print("Eww, turnips are horrible.")
}

/*
let i = 1
if i {
	// ...
}
*/

let i = 1
if i == 1 {
	// ...
}

/* Tuples */
let http404Error = (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

/* Optionals */
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

// nil
var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?

// If Statements and Forced Unwrapping
if convertedNumber != nil {
	print("convertedNumber contains some integer value.")
}

if convertedNumber != nil {
	print("convertedNumber has an integer value of \
	(convertedNumber!).")
}

// Optional Binding
if let actualNumber = Int(possibleNumber) {
	print("The string \"\(possibleNumber)\" has an integer value 
	of \(actualNumber)")
} else {
	print("The string \"\(possibleNumber)\" could not be 
	converted to an integer")
	
if let firstNumber = Int("4"), let secondNumber = Int("42"), 
		firstNumber < secondNumber && secondNumber < 100 {
	print("\(firstNumber) < \(secondNumber) < 100")
}

if let firstNumber = Int("4") {
	if let secondNumber = Int("42") {
		if firstNumber < secondNumber && secondNumber < 100 {
			print("\(firstNumber) < \(secondNumber) < 100")
		}
	}
}

// Implicitly Unwrapped Optionals
let possibleString: String? = "An optional string."
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string"
let implicitString: String = assumedString

if assumedString != nil {
	print(assumedString)
}

if let definiteString = assumedString {
	
}print(definiteString)

/* Error Handling */
func canThrowAnError() throws {
	// ...
}

do {
	try canThrowAnError()
} catch {
	// ...
}

func makeASandwich() throws {
	// ...
}

do {
	try makeASandwich()
	eatASandwich()
} catch SandwichError.outOfCleanDishes {
	washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
	buyGroceries(ingredients)
}

/* Assertions and Preconditions */
// Dubuggin with Assertions
let age = -3
assert(age >= 0, "A person's age can't be less than zero.")

assert(age >= 0)

if age > 0 {
	print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
	print("You can ride the ferris wheel.")
} else {
	assertionFailure("A person's age can't be less than zero")
}

// Enforcing Preconditions
precondition(index > 0, "Index must be greater than zero.")

