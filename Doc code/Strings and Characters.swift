/* Strings and Characters */

/* String Literals */
let someString = "Some string literal value"

// Multiline String Literals
let quotation = """
The White Rabbit put on his spectacles. "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

let singleLineString = "These are the same"
let multilineString = """
These are the same
"""

let softWrappedQuotation = """The White Rabbit put on his spectacles. "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

let lineBreaks = """

This string starts with a line break.
It also ends with a line break

"""

let lineWithIndentation = """
    This line doesn't begin with whitespace.
        This line begins with four spaces.
    This line doensn't begin with whitespace.
    """

// Special Characters in String Literals
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"

let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""

// Extended String Delimiters
let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#

/* Initializing an Empty String */
vae emptyString = ""
var anotherEmptyString = String()

if emptyString.empty {
  print("Nothing to see here")
}

/* String Mutability */
var variableString = "Horse"
variableString += " and carriage"

let constantString = "Highlander"
// constantString += " and another Highlander"

/* Strings Are Value Types */

/* Working with Characters */
for character in "Dog!" {
  print(character)
}

let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)

/* Concatenating Strings and Characters */
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

let exclamationMark: Character = "!"
welcome.append(exclamationMark)

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

/* String Interpolation */
let multiplier - 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

print(#"Write an interpolated string in Swift using \(multiplier)."#)

print(#"6 times 7 is \#(6 * 7)."#)

/* Couting Characters */
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

var word = "cafe"
print("the number of characters in \(word) is \(word.count)")

word += "\u{301}"

print("the number of characters in \(word) is \(word.count)")

/* Accessing and Modifying a String */
// String Indices
let greeting = "Guten Tag!
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

// greeting[greeting.endIndex]
// greeting.index(after: greeting.endIndex)

for index in gerrting.indices {
  print("\(greeting[index]) "), terminator: "")
}

// Inserting and Removing
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)

/* Substrings */
let greeting = "Hello, world!"
let index - greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
let newString = String(beginning)

/* Comparing Strings */
// String and Character Equality
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
 print("These two strings are considered equal")
}

let eAcuteQuestion = "Voulez-vous un caf\u{E9}"

let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}"

if eAcuteQuestion == combinedEAcuteQuestion {
  print("These two strings are considred equal")
}

let latinCapitalLetterA: Character = "\u{41}"

let cyrillicCapitalLetterA: Character = "\u{0410}"

if latinCapitalLetterA != cyrillicCapitalLetterA {
  print("These two characters are not equivalent")
}

// Prefix and Suffix Equality
let romeoAndJuliet = [
"Act 1 Scene 1: Verona, A public place",
"Act 1 Scene 2: Capulet's mansion",
"Act 1 Scene 3: A room in Capulet's mansion",
"Act 1 Scene 4: A street outside Capulet's mansion",
"Act 1 Scene 5: The Great Hall in Capulet's mansion",
"Act 2 Scene 1: Outside Capulet's mansion",
"Act 2 Scene 2: Capulet's orchard",
"Act 2 Scene 3: Outside Friar Lawrence's cell",
"Act 2 Scene 4: A street in Verona",
"Act 2 Scene 5: Capulet's mansion",
"Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
  if scene.hasPrefix("Act 1") {
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
print("\(mansion) mansion scenes; \(cellCount) cell scenes")
