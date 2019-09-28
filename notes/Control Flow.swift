// Control Flow

// For-In Loops
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
print("Hello, \(name)!")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
print("\(animalName)s have \(legCount) legs")
}
/*
The contents of a Dictionary are inherently unordered, 
and iterating over them does not guarantee the order in which they will be retrieved. 
In particular, the order you insert items into a Dictionary doesn’t define the order 
they are iterated
*/

for index in 1...5 {
print("\(index) times 5 is \(index * 5)")
}

for _ in 1...power {
answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

let minutes = 60
for tickMark in 0..<minutes {
// render the tick mark each minute (60 times)
}

// range(i, j, k), j exclusive
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
// render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
}

// range(i, j, k), j inclusive
let hours = 12
let hourInteval = 3
for tickMark in stride(from: 3, through: hours, by: hourInteval) {
// render the tick mark every 3 hours (3, 6, 9, 12)
}

// While loops

// While
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0
while square < finalSquare {
// roll the diceRoll
diceRoll += 1
if diceRoll == 7 { diceRoll = 1 }
// move by the rolled amount
square += diceRoll
if square < board.count {
// if we're still on the board, move up or down for a snake or a ladder
square += board[square]
}
}
print("Game over!")

// Repeat-While
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0

repeat {
// ...
square += board[square]
// ...
diceRoll += 1
if diceRoll == 7 { diceRoll = 1 }
// ...
square += diceRoll
} while square < finalSquare
print("Game over")

// Conditional Statements

// If
var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
print("It's very cold. Consider wearing a scarf.")
}

temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {
print("It's very cold. Consider wearing a scarf.")
} else {
print("It's not that cold. Wear a t-shirt.")
}

temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
print("Its very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
print("It's really warm. Don't forget to wear sunscreen.")
} else {
print("It's not that cold. Wear a t-shirt.")
}

temperatureInFahrenheit = 72
if temperatureInFahrenheit <= 32 {
print("It's very cold. Conditional wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
print("It's really warm. Don't forget to wear sunscreen.")
}

// Switch
let someCharacter: Character = "z"
switch someCharacter {
case "a":
print("The first letter of the alphabet")
case "z":
print("The last letter of the alphabet")
default:
print("Some other character")
}

// No Implicit Fallthrough
/*
The body of each case must contain at least one executable statement.
*/

/*
To make a switch with a single case that matches both "a" and "A", 
combine the two values into a compound case, 
separating the values with commas.
*/
let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
print("The letter A")
default:
print("Not the letter A")
}

// Interval Matching
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
naturalCount = "no"
case 1..<5:
naturalCount = "a few"
case 5..<12:
naturalCount = "several"
case 12..<100:
naturalCount = "dozens of"
case 100..<1000:
naturalCount = "hundreds of"
default:
naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

Tuples
/*
You can use tuples to test multiple values in the same switch statement. 
Each element of the tuple can be tested against a different value 
or interval of values. 
Alternatively, use the underscore character (_), 
also known as the wildcard pattern, 
to match any possible value.
*/
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
print("\(somePoint) is at the origin")
case (_, 0):
print("\(somePoint) is on the x-axis")
case (0, _):
print("\(somePoint) is on the y-axis")
case (-2..2, -2...2):
print("\(somePoint) is inside the box")
default:
print("\(somePoint) is outside of the box")
}

// Value Bindings
/*
A switch case can name the value or values 
it matches to temporary constants or variables, 
for use in the body of the case
*/
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
print("on the x-axis with an x value of \(x)")
case (0, let y):
print("on the y-axis with a y value of \(y)")
case let (x, y):
print("somewhere else at (\(x), \(y))") // notice here
}

// Where
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
print("(\(x), \(y)) is just some arbitrary point")
}

// Compound Cases
let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", 
"n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
print("\(someCharacter) is a consonant")
default:
print("\(someCharacter) is a consonant")
default:
print("\(someCharacter) is not a vowel or a consonant")
}

/*
Compound cases can also include value bindings. 
All of the patterns of a compound case have to include the same set of value bindings, 
and each binding has to get a value of the same type from all of the patterns in the compound case.
*/
let stillAnotherPoint {
case (let distance, 0), (0, let distance):
print("On an axis, \(distance) from the origin")
default:
print("Not on an axis")
}

// Control Transfer Statements

// Continue
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
if charactersToRemove.contains(character) {
continue
}
puzzleOutput.append(character) // String.append()
}
print(puzzleOutput)

// Break
// can be used in a switch statement

// Break in a Loop Statement
