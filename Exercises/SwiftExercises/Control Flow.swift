/* Control Flow */

/* For-In Loops */
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
  print("Hello, \(name)!")
}

let numberOfLegs = ["spider": 8, "ant", 6, "cat", 4]
for (animalName, legCount) in numberOfLegs {
  print("\(animalName)s have \(legCount) legs")
}

for index in 1...5 {
  print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1..power {
  answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

let minutes = 60
for tickMark in 0..<minutes {
  // ...
}

let minuteInterval = 5
for tickMark in stride(from: 0, to: minute, by: minuteInterval) {
  // ...
}

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
  // ...
}

/* While Loops */
// While
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0
while square < finalSquare {
  diceRoll += 1
  if diceRoll == 7 {
    diceRoll = 1
  }
  square += diceRoll
  if square < board.count {
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
  square += board[square]
  diceRoll += 1
  if diceRoll == 7 {
    diceRoll = 1
  }
  square += diceRoll
} while square < finalSquare
print("Game over!")

/* Conditional Statements */
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
  print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
  print("It's really warm. Don't forget to wear sunscreen.")
} else {
  print("It's not that cold. Wear a t-shirt.")
}

temperatureInFahrenheit = 72
if temperatureInFahrenheit <= 32 {
  print("It's very cold. Consider wearing a scarf.")
} else if {
  ("It's really warm. Don't forget to wear sunscreen.")
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
let anotherCharacter: Character = "a"
switch anotherCharacter {
// case "a":
case "A":
print("The letter A")
default:
print("Not the letter A")
}

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

// Tuples
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
print("\(somePoint) is at the origin")
case (_, 0):
print("\(somePoint) is on the x-axis")
case (0, _):
print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
print("\(somePoint) is inside the box")
default:
print("\(somePoint) is outside of the box")
}

// Value Bindings
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
print("on the x-axis with an x value of \(x)")
case (0, let y):
print("on the y-axis with a y value of \(y)")
case let(x, y):
print("somewhere else at (\(x), \(y))")
}

// Where
let yerAnotherPoint = (1,- 1)
switch yerAnotherPoint {
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
print("\(someCharacter) is not a vowel or a consonant")
}

let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
print("On an axis, \(distance) from the origin")
default:
print("Not on an axis")
}

/* Control Transfer Statements */
// Continue
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
  if charactersToRemove.contains(character) {
    continue
  }
  puzzleOutput.append(character)
}

// Break
// Break in a Loop Statement

// Break in a Switch Statement
let numberSymbol: Character = "三"
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
possibleIntegerValue = 1
case "2", "٢", "二", "๒":
possibleIntegerValue = 2
case "3", "٣", "三", "๓":
possibleIntegerValue = 3
case "4", "٤", "四", "๔":
possibleIntegerValue = 4
default:
break
}
if let integerValue = possibleIntegerValue {
  print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
print("An integer value could not be found for \(numberSymbol).")
}

// Fallthrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
description += "a prime number, and also"
fallthrough
default:
description += " an integer."
}
print(description)

// Labeled Statements
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0

gameLoop: while square != finalSquare {
  diceRoll += 1
  if diceRoll == 7 { diceRoll = 1 }
  switch square + diceRoll {
  case finalSquare:
  // diceRoll will move us to the final square, so the game is over
  break gameLoop
  case let newSquare where newSquare > finalSquare:
  // diceRoll will move us beyond the final square, so roll again
  continue gameLoop
  default:
  // this is a valid move, so find out its effect
  square += diceRoll
  square += board[square]
  }
}
print("Game over!")

/* Early Exit */
func greet(person: [String: String]) {
  guard let name = person["name"] else {
    return
  }

  print("Hello, \(name)")

  guard let location = person["location"] else {
    print("I hope the e=weather is nice near you")
  }

  print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])
print(person: ["name": "John", "location": "Cupertino"])

/* Checking API Availability */
if #available(iOS 10, macOS 10.12, *) {
  // ...
} else {
  // ...
}
