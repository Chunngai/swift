/* Functions */

/* Defining and Calling Functions */
func greet(person: String) -> String {
  let greeting = "Hello, " + person + "!"
  return greeting
}

print(greet(person: "Anna"))
print(greet(person: "Brian"))

func greetAgain(personL String) -> String {
  return "Hello again " + person + "!"
}
print(greetAgain(person: "Anna"))

/* Function Parameters and Return Values */
// Functions Without Parameters
func sayHelloWorld() -> String {
  return "hello, world"
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

func printAndCount(string: String) -> Int {
  print(string)
  return string.count
}
func printWithoutCounting(string: String) {
  let _ = printAndCount(string: string)
}
printAndCount(string: "hello, world!")
printWithoutCounting(string: "hello, world!")

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

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")

// Optional Tuple Return Types
func minMax(array: [Int]) -> (min: Int, max: int)? {
  if array.isEmpty {
    return nil
  }

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

// Functions With an Implicit Return
func greeting(for person: String) -> String {
  "Hello, " + person + "!"
}
print(greeting(for: "Dave"))

func anotherGreeting(for person: String) -> String {
  return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Dave"))

/* Function Argument Labels and Parameter Names */
func someFunction(firstParameterName: Int, secondParameterName: Int) {
  // ...
}
someFunction(firstParameterName: 1, secondParameterName: 2)

// Specifying Argument Labels
func someFunction(argumentLabel parameterName: Int) {
  // ...
}

func greet(person: String, from hometown: String) -> {
  return "Hello \(person)! Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))

// Omitting Argument Labels
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
  // ...
}
someFunction(1, secondParameterName: 2)

// Default Parameter Values
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
  // ...
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6)
someFunction(parameterWithoutDefault: 4)

// Variadic Parameters
func arithmeticMean(_ numbers: Double...) -> Double {
  var total: Double = 0
  for number in numbers {
    total += number
  }
  return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4 ,5)
arithmeticMean(3, 8.25, 18.75)

// In-Out Parameters
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
  let temporaryA = a
  a = b
  b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("somtInt is now \(someInt), and anotherInt is now \(anotherInt)")

/* Function Types */
func addTwoInts(_ a: Int, _ b: Int) -> Int {
  return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
  return a * b
}

func printHelloWorld() {
  print("hello, world")
}

// Using Function Types
var mathFunction: (Int, Int) -> Int = addTwoInts

print("Result: \(mathFunction(2, 3))")

mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")

let anotherMathFunction = addTwoInts

// Function Types as Parameter Types
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
  print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

// Function Types as Return Types
func stepForward(_ input: Int) -> Int {
  return input + 1
}
func stepBackward(_ input: Int) -> Int {
  return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
  return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

print("Counting to zero:")
while currentValue != 0 {
  print("\(currentValue)...")
  currentValue = moveNearerToZero(currentValue)
}


// Nested Functions
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
  func stepForward(input: Int) -> Int {
    return input + 1
  }
  func stepBackward(input: Int) -> Int {
    return input - 1
  }
  return backward? stepBackward : stepForward
}

var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0) {
  print("\(currentValue)...")
  currentValue = moveNearerToZero(currentValue)
}
