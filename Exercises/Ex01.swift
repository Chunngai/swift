import UIKit

// 2 6 8 9 11
print("Exercise 1\n")

// 1.2
print("Question 1.2")

for _ in 0..<5 {
    // (1) '_' instead of 'i' since 'i' is not used
    // (2) 0..<5: 5 times. 0...5: 6 times
    
    print("Welcome to Swift")
}

print()

// 1.6
print("Question 1.6")

var sum = 0
for i in 1...9 {
    sum += i
}
print("The sum is \(sum)")

print()

// 1.8
print("Question 1.8")

let radius = 5.5
let circlePerimeter = 2 * radius * 3.14
let circleArea = radius * radius * 3.14
print("The perimeter of the circle is \(circlePerimeter) and its area is \(circleArea)")

print()

// 1.9
print("Question 1.9")

let width = 4.5
let height = 7.9
let rectanglePerimeter = width * 2 + height * 2
let rectangleArea = width * height
print("The perimeter of the rectangle is \(rectanglePerimeter) and its area is \(rectangleArea)")

print()

// 1.11
print("Question 1.11")

for i in 1...5 {
    // let fiveYearsSeconds: Double = i * 365 * 24 * 60 * 60
    // (3) cannot convert type Int to Double. the right of the '=' is Int and the right Double!
    let fiveYearsSeconds: Double = Double(i * 365 * 24 * 60 * 60)
    let birth = fiveYearsSeconds / 7
    let death = fiveYearsSeconds / 13 * -1
    let newImmigrant = fiveYearsSeconds / 45
    let newPopulation = 312_032_486 + birth + death + newImmigrant
    print(newPopulation)
}


print()

// Experiments
print("Experiments")

let fraction = 0.14
print(fraction + 3)
// it's ok to add a float type const to a int literal


let zeroPointOneFour = 0.14 // inferred as an Int
let three = 3 // inferred as a double
// let piApproximation = zeroPointOneFour + three
// (1) an Int const and a Double const cannot be added together directly
let piApproximation = zeroPointOneFour + Double(three)
print(piApproximation)
