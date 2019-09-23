import UIKit

print("Exercise 2\n")
// 5 6 13 19 23

// 2.5
print("Question", 2.5)

/* cannot used in the playground!
 
print("Enter the subtotal and a gratuity rate:", terminator: " ") // (1) terminator: the end keyword in the print() in python
let input = readLine()?.split(separator: " ")
let subtotal = Double(input![0])!
let gratuityRate = Double(input![1])!
*/
let subtotal = Double("10")! // (2) '!' is necessary when convert a String to an Int
let gratuityRate = Double("15")!
 
let gratuity = subtotal * gratuityRate * 0.01
let total = subtotal + gratuity
print("The gratuity is $\(gratuity) and total is $\(total)")

print()

// 2.6
print("Question", 2.6)

var integer = Int("999")!

var sum = 0 // (3) the sum var should be mutable thus declare it as a var rather than a const
while integer != 0 {
    sum += integer % 10
    integer /= 10
}

print("The sum of the digits is \(sum)")

print()

// 2.13
print("Question", 2.13)

let monthlySavingAmount = Double("100")!
var accountValue: Double = 0

for _ in 1...6 {
    accountValue = (100 + accountValue) * (1 + 0.00417)
}
print("After the six month, the account value is $\(accountValue)")

print()

// 2.19
print("Question", 2.19)

let (x1, y1, x2, y2, x3, y3) = (1.5, -3.4, 4.6, Double(5), 9.5, -3.4)

let side1 = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2)) // (4) sqrt(), pow()
let side2 = sqrt(pow(x1 - x3, 2) + pow(y1 - y3, 2))
let side3 = sqrt(pow(x2 - x3, 2) + pow(y2 - y3, 2))
let s = (side1 + side2 + side3) / 2
let area = sqrt(s * (s - side1) * (s - side2) * (s - side3))
print("The area of the triangle is \(area)")

print()

// 2.23
print("Question", 2.23)

let distance = Double("900.5")!
let milesPerGallon = Double("25.5")!
let pricePerGallon = Double("3.55")!

let cost = distance / milesPerGallon * pricePerGallon
print("The cost of driving is $\(cost)")

print()

// Experiments
let doubleA = Double(3)
let doubleATimesOne = doubleA * 1

let doubleB = Double("3")! // (1) the '!' is needed here as the arg is a String
let doubleBTimesOne = doubleB * 1
