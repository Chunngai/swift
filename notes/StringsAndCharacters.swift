// Strings and Characters

// String Literals
let someString = "Some string literal value"

// Multiline String Literals
let quotation = """
The White Rabbit put on his spectacles. "Where shall I begin, 
please your Majesty?" he asked. 
	
"Begin at the beginning," the King said gravely, "and go on 
till you come to the end; then stop."
"""

/*
A multiline string literal includes all of the lines between its opening and 
closing quotation marks. 
The string begins on the first line after the opening quotation marks (""") and 
ends on the line before the closing quotation marks, which means that 
neither of the strings below start or end with a line break:
*/
let singleLieneString = "These are the same."
let multilineString = """
These are the same.
"""

/*
If you want to use line breaks to make your source code easier to read, 
but you don’t want the line breaks to be part of the string’s value, 
write a backslash (\) at the end of those lines:
*/
let softWrappedQuotation = """
The White Rabbit put on his spectacles. "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on\
till you come to the end; then stop."
"""

/*
To make a multiline string literal that begins or ends with a line feed, 
write a blank line as the first or last line
*/
let lineBreaks = """
	
This string starts with a line break.
It also ends with a line break.

"""

/*
A multiline string can be indented to match the surrounding code. 
The whitespace before the closing quotation marks (""") tells Swift 
what whitespace to ignore before all of the other lines. 
However, if you write whitespace at the beginning of a line in addition to 
what’s before the closing quotation marks, that whitespace is included
*/
let linesWithIndentation = """
	This line doesn't begin with whitespace.
		This line begins with four spaces.
	This line doesn't begin with whitespace.
	"""
	
// Special Characters in String Literals
/* 
The escaped special characters \0 (null character), \\ (backslash), 
\t (horizontal tab), \n (line feed), \r (carriage return), 
\" (double quotation mark) and \' (single quotation mark)

An arbitrary Unicode scalar value, written as \u{n}, 
where n is a 1–8 digit hexadecimal number
*/
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"
let blackHeat = "\u{2665}"
let sparklingHeat = "\u{1F496}"

/*
Because multiline string literals use three double quotation marks 
instead of just one, you can include a double quotation mark (") 
inside of a multiline string literal without escaping it. 
To include the text """ in a multiline string, 
escape at least one of the quotation marks
*/
let threeDoubleQuotationmarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""

// Extend String Delimiters
// like the raw string in python
/*
You can place a string literal within extended delimiters 
to include special characters in a string without invoking their effect. 
You place your string within quotation marks (") 
and surround that with number signs (#)

For example, printing the string literal #"Line 1\nLine 2"# 
prints the line feed escape sequence (\n) rather than 
printing the string across two lines
*/

/*
If you need the special effects of a character in a string literal, 
match the number of number signs within the string following the escape character (\). 
For example, if your string is #"Line 1\nLine 2"# and you want to break the line, 
you can use #"Line 1\#nLine 2"# instead. 
Similarly, ###"Line1\###nLine2"### also breaks the line
*/

/* 
String literals created using extended delimiters can also be multiline string literals. 
You can use extended delimiters to include the text """ in a multiline string, 
overriding the default behavior that ends the literal
*/
let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#

// Initializing an Empty String
var emptyString = ""
var anotherEmptyString = String()

// check if a str is empty
if emptyString.isEmpty {
print("Nothing to see here")
}

// String Mutability
var variableString = "Horse"  // mutable
variableString += " and carriage"

let constantString = "Highlander"  // immutable
// constantString += " and another Highlander"

// Strings Are Value Types
/*
Swift’s String type is a value type. 
If you create a new String value, that String value is copied when it’s passed to a function or method, 
or when it’s assigned to a constant or variable. 
In each case, a new copy of the existing String value is created, 
and the new copy is passed or assigned, not the original version
*/

// Working with Characters
for character in "Dog!🐶" {
print(character)  // access each char
}

/*
you can create a stand-alone Character constant or variable 
from a single-character string literal by providing a Character type annotation
*/
let exclamationMark: Character = "!"

/*
String values can be constructed 
by passing an array of Character values as an argument to its initializer
*/
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)

// Concatenating Strings and Characters
// concatenation
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

// append
var instruction = "look over"
instruction += string2

// append a chr to a str with the String type's append()
let exclamationMark: Character = "!"
welcome.append(exclamationMark)

/*
If you’re using multiline string literals to build up the lines of a longer string, 
you want every line in the string to end with a line break, 
including the last line
*/
let badStart = """
one
two
"""
let end = """
three
"""
print(badStart + end)

let goodStart = """
one
two

"""
print(goodStart + end)

/*
In the code above, concatenating badStart with end produces a two-line string, 
which isn’t the desired result. 
Because the last line of badStart doesn’t end with a line break, 
that line gets combined with the first line of end. 
In contrast, both lines of goodStart end with a line break, 
so when it’s combined with end the result has three lines, as expected
*/

// String Interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

/*
You can use extended string delimiters to create strings containing characters 
that would otherwise be treated as a string interpolation
*/
print(#"Write an interpolated string in Swift using \(multiplier)."#)

/*
To use string interpolation inside a string 
that uses extended delimiters, match the number of number signs 
before the backslash to the number of number signs at the beginning and 
end of the string
*/
print(#"6 times 7 is \#(6 * 7)."#)

/*
The expressions you write inside parentheses within an interpolated string 
can’t contain an unescaped backslash (\), a carriage return, or a line feed. 
However, they can contain other string literals.
*/

// Unicode

// Extended Grapheme Clusters
let eAcute: Character = "\u{E9}"  // é 
let combinedEAcute: Character = "\u{65}\u{301}"  // e followed by ́ 

/*
Extended grapheme clusters are a flexible way 
to represent many complex script characters as a single Character value
*/
let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"

/*
Extended grapheme clusters enable scalars for enclosing marks
*/
let enclosedEAcute: Character = "\u{E9}\u{20DD}"  //  é⃝

/*
Unicode scalars for regional indicator symbols can be combined in pairs to make a single Character value
*/
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"