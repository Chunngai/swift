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

// multiline comments can e nested
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


