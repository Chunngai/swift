import UIKit

// 8 11 14 20 23
print("Exercise 3\n")

// 4.8
print("Question 4.8")

let asciiCode: UInt8 = UInt8("69")!
let chr = Character(UnicodeScalar(asciiCode)) // (1) ascii -> chr. init(_: UInt8), init?(_: Int)
print("The character for ASCII code \(asciiCode) is \(chr)")

print()

// 4.11
print("Question 4.11")

let inputA = "11"
let inputB = "5"
let inputC = "31"
let inputList = [inputA, inputB, inputC]

for input in inputList {
    // (2) 0 <= inputInt <= 9 is wrong
    
    var hexValueChr: Character?
    let hexValueInt = Int(input)!
    
    switch hexValueInt {
    case 0...9:
        hexValueChr = input[input.startIndex]
    case 10:
        hexValueChr = "A"
    case 11:
        hexValueChr = "B"
    case 12:
        hexValueChr = "C"
    case 13:
        hexValueChr = "D"
    case 14:
        hexValueChr = "E"
    case 15:
        hexValueChr = "F"
    default:
        break
    }
    
    if let chr = hexValueChr { // (3) if let varName1 = varName2
        print("The hex value is \(chr)")
    } else {
        print("\(input) is an invalid input")
    }
}

print()

// 4.14
print("Question 4.14")

let input1: Character = "B"
let input2: Character = "T"
let inputChrList = [input1, input2]

for input in inputChrList {
    if input == "A" || input == "B" || input == "C"
        || input == "D" || input == "E" {
        print("The numeric value for grade \(input) is", terminator: " ")
    }
    
    switch input {
    case "A":
        print(4)
    case "B":
        print(3)
    case "C":
        print(2)
    case "D":
        print(1)
    case "E":
        print(0)
    default:
        print("\(input) is an invalid grade")
    }
}

print()

// 4.20
print("Question 4.20")

let inputStr = "This is a string"
print("the length of the string is \(inputStr.count) and its first character is \(inputStr[inputStr.startIndex])")

print()

// 4.23
print("Question 4.23")

let employeeName = "Smith"
let numberOfHoursWorkedInAWeek = Double("10")!
let hourlyPayRate = Double("9.75")!
let federalTaxWithholdingRate = Double("0.20")!
let stateTaxWithholdingRate = Double("0.09")!

let grossPay = numberOfHoursWorkedInAWeek * hourlyPayRate
let federalWithholding = numberOfHoursWorkedInAWeek * hourlyPayRate * federalTaxWithholdingRate
let stateWithholding = numberOfHoursWorkedInAWeek * hourlyPayRate * stateTaxWithholdingRate
let totalDeduction = federalWithholding + stateWithholding
let netPay = grossPay - totalDeduction

let strToPrint = """
Employee Name: \(employeeName)
Hours Worked: \(numberOfHoursWorkedInAWeek)
Pay Rate: $\(hourlyPayRate)
Gross Pay: \(grossPay)
Deductions:
    Federal Withholding (\(federalTaxWithholdingRate)): $\(federalWithholding)
    State Withholding (\(stateTaxWithholdingRate)): $\(stateWithholding)
    Total Deduction: $\(totalDeduction)
Net Pay: \(netPay)
""" // (4) "(\() )chr in multiline str?
print(strToPrint)

print()

// Experiments
print("Experiments")

let num = 0.02
let multilineStr = """
(\(num))a
""" // (1) "(\(num) )a" is invalid?

/*
"""
 (
"""
*/
// (2) "(": a space is needed before the '('?
