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

// Counting Characters
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie hase \(unusualMenagerie.count)")

var word = "cafe"
print("the number of characters in \(word) is \(word.count)")  // 4

word += "\u{301}"  // café
print("the number of characters in \(word) is \(word.count)")  // 4

/*
Extended grapheme clusters can be composed of multiple Unicode scalars. 
This means that different characters—and different representations 
of the same character—can require different amounts of memory to store. 
Because of this, characters in Swift don’t each take up the same amount of memory 
within a string’s representation. 
As a result, the number of characters in a string can’t be calculated 
without iterating through the string to determine its extended grapheme cluster boundaries. 
If you are working with particularly long string values, be aware that 
the count property must iterate over the Unicode scalars in the entire string 
in order to determine the characters for that string.
The count of the characters returned by the count property 
isn’t always the same as the length property of an NSString 
that contains the same characters. 
The length of an NSString is based on the number of 16-bit code units 
within the string’s UTF-16 representation 
and not the number of Unicode extended grapheme clusters within the string.
*/

// Accessing and Modifying a String

// String Indices
/*
different characters can require different amounts of memory to store, 
so in order to determine which Character is at a particular position, 
you must iterate over each Unicode scalar from the start or end of that String. 
For this reason, Swift strings can’t be indexed by integer values.
*/
let greeting = "Guten Tag"
greeting[greeting.startIndex] // G
greeting[greeting.index(before: greeting.endIndex)] // !
greeting[greeting.index(after: greeting.startIndex)] // u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index] // a

// access out of range
greeting[greeting.endIndex] // error
greeting.index(after: greeting.endIndex) // error

// access all of the indices
for index in greeting.indices {
print("\(greeting[index]) ", terminator: "")
} 

// Inserting and Removing
// insert
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex) // insert a single chr

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex)) // insert a str

// remove
welcome.remove(at: welcome.index(before: welcome.endIndex)) // rm a chr

let range = welcome.index(welcome.endIndex, offsetBy: -6))..<welcome.endIndex
welcome.removeSubrange(range)

// Substrings
/*
When you get a substring from a string—for example, using a subscript or a method like prefix(_:)—
the result is an instance of Substring, not another string. 
Substrings in Swift have most of the same methods as strings, 
which means you can work with substrings the same way you work with strings. 
However, unlike strings, you use substrings for only a short amount of time 
while performing actions on a string. 
When you’re ready to store the result for a longer time, 
you convert the substring to an instance of String.
*/
let greeting = "Hello, world"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
let newString = String(beginning)

/*
Like strings, each substring has a region of memory 
where the characters that make up the substring are stored. 
The difference between strings and substrings is that, 
as a performance optimization, a substring can reuse part of the memory 
that’s used to store the original string, 
or part of the memory that’s used to store another substring. 
(Strings have a similar optimization, but if two strings share memory, they are equal.) 
This performance optimization means 
you don’t have to pay the performance cost of copying memory 
until you modify either the string or substring. 
As mentioned above, substrings aren’t suitable for long-term storage—
because they reuse the storage of the original string, 
the entire original string must be kept in memory as long as any of its substrings are being used
*/

// Comparing Strings
String and Character Equality
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
print("These two strings are considered equal")
}

/*
Two String values (or two Character values) are considered equal 
if their extended grapheme clusters are canonically equivalent. 
Extended grapheme clusters are canonically equivalent 
if they have the same linguistic meaning and appearance, 
even if they’re composed from different Unicode scalars behind the scenes.
*/
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"

if eAcuteQuestion == combinedEAcuteQuestion {
print("These two strings are considered equal")
}

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"

if latinCapitalLetterA != cyrillicCapitalLetterA {
print("These two characters are not equivalent.")
}

// Prefix and Suffix Equality
1.	let romeoAndJuliet = [ 
2.	"Act 1 Scene 1: Verona, A public place", 
3.	"Act 1 Scene 2: Capulet's mansion", 
4.	"Act 1 Scene 3: A room in Capulet's mansion", 
5.	"Act 1 Scene 4: A street outside Capulet's mansion", 
6.	"Act 1 Scene 5: The Great Hall in Capulet's mansion", 
7.	"Act 2 Scene 1: Outside Capulet's mansion", 
8.	"Act 2 Scene 2: Capulet's orchard", 
9.	"Act 2 Scene 3: Outside Friar Lawrence's cell", 
10.	"Act 2 Scene 4: A street in Verona", 
11.	"Act 2 Scene 5: Capulet's mansion", 
12.	"Act 2 Scene 6: Friar Lawrence's cell" 
13.	]
var act1SceneCount = 0
for scene in romeoAndJuliet {
if scene.hasPrefix("Act 1 ") {
act1SceneCount += 1
}
}
print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
if scene.hasSuffix("Capulet's mansion") {
mansionCount += 1
} else if scene.hasSuffix("Friar Lawrence's cell") {
cellCount += 1
}
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

// Unicode Representations of Strings
let dogString = "Dog‼🐶"

// UTF-8 Representation
/*
You can access a UTF-8 representation of a String by iterating over its 
utf8 property. This property is of type String.UTF8View, 
which is a collection of unsigned 8-bit (UInt8) values, 
one for each byte in the string’s UTF-8 representation
*/
for codeInt in dogString.utf8 {
print("\(codeInt) ", terminator: "")
}
print("")
// Prints "68 111 103 226 128 188 240 159 144 182 "

// UTF-16 Representation
/*
You can access a UTF-16 representation of a String by iterating over its 
utf16 property. This property is of type String.UTF16View, 
which is a collection of unsigned 16-bit (UInt16) values, 
one for each 16-bit code unit in the string’s UTF-16 representation
*/
for codeInt in dogString.utf16 {
print("\(codeInt) ", terminator: "")
}
print("")
// Prints "68 111 103 8252 55357 56374 "

// Unicode Scaler Representation
/*
You can access a Unicode scalar representation of a String value by iterating over its 
unicodeScalars property. This property is of type UnicodeScalarView, 
which is a collection of values of type UnicodeScalar

Each UnicodeScalar has a value property that returns the scalar’s 21-bit value, 
represented within a UInt32 value
*/
for scalar in dogString.unicodeScalars {
print("\(scalar.value) ", terminator: "")
}
print("")
// Prints "68 111 103 8252 128054 "

for scalar in dogString.unicodeScalars {
print("\(scalar) ")
}