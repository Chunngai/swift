import UIKit

// 8 13 26 29 37
print("Exercise 6\n")

// 6.8
print("Question 6.8")

func celsiusToFahrenheit(celsius: Double) -> Double {
    return (9.0 / 5) * celsius + 32
}

func fahrenheitToCelsius(fahrenheit: Double) -> Double {
    return (5.0 / 9) * (fahrenheit - 32)
}

var celsius = 40.0
var fahrenheit = 120.0
print("Celsius\tFahrenheit\t|\tFahrenheit\tCelsius")
for _ in 0...9 {
    let celsiusStr = String(format: "%.1f", celsius)
    let fahrenheitStr = String(format: "%.1f", fahrenheit)
    let celsiusToFahrenheitStr = String(format: "%.1f", celsiusToFahrenheit(celsius: celsius))
    let fahrenheitToCelsiusStr = String(format: "%.1f", fahrenheitToCelsius(fahrenheit: fahrenheit))
    print("\(celsiusStr)\t\(celsiusToFahrenheitStr)\t\t|\t\(fahrenheitStr)\t\t\(fahrenheitToCelsiusStr)")
    
    celsius -= 1
    fahrenheit -= 10
}

print()

// 6.13
print("Question 6.13")

var m_i: Double = 0
func calculate(i: Double, m_i: Double) -> Double {
    return m_i + i / (i + 1)
}

print("i\t\t\tm(i)")
for i in 1...20{
    let outcome = calculate(i: Double(i), m_i: m_i)
    m_i = outcome
    
    let miStr = String(format: "%7.4f", outcome)
    print("\(Int(i))\t\t\t\(miStr)")
}

print()

// 6.26
print("Question 6.26")

func isPrimeNumber(number: Int) -> Bool {
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

func isPalindromic(number: Int) -> Bool {
    let numberStr = String(number)

    for i in 0..<numberStr.count {
        if numberStr[numberStr.index(numberStr.startIndex, offsetBy: i)] != numberStr[numberStr.index(numberStr.endIndex, offsetBy: -i - 1)] {
            return false
        }
    }
    return true
}

var countNum = 0
var count = 2
var countDisplay = 0
while countNum <= 100 {
    if isPrimeNumber(number: count) && isPalindromic(number: count) {
        print(count, terminator: " ")
        
        countDisplay += 1
        if countDisplay == 10 {
            countDisplay = 0
            print()
        }
        
        countNum += 1
    }
    count += 1
}

print()

// 6.29
print("Question 6.29")

var count_ = 3
while count_ <= 997 {
    if isPrimeNumber(number: count_) && isPrimeNumber(number: count_ + 2) {
        print("(\(count_), \(count_ + 2))")
    }
    count_ += 1
}

print()

// 6.37
print("Question 6.37")

func format(number: Int, width: Int) -> String {
    let length = String(number).count
    
    if length >= width {
        return String(number)
    } else {
        let zeroNum = width - length
        var str = String(number)
        
        for _ in 1...zeroNum {
            str = "0" + str
        }
        return str
    }
}
print(format(number: 34, width: 4))
print(format(number: 34, width: 5))
print(format(number: 34, width: 1))

print()
