import UIKit


// 2 7 9 26 30
print("Exercise 4\n")

// 7.2
print("Question 7.2")

// (1) let integerList: [Int]: not initialized
var	 integerList: [Int] = [Int]()
for i in 0..<10 {
    // (2) integerList[i - 1] = i: the index here is wrong.
    integerList.append(i)
}
for i in stride(from: 9, through: 0, by: -1) {
    print(integerList[i])
}

print()

// 7.7
print("Question 7.7")

let randomIntegersList = [7, 0, 1, 8, 6, 4, 9, 3, 6, 3, 7, 3, 7, 2, 8, 9, 5, 8, 1, 8, 7, 7, 3, 0, 7, 9, 8, 5, 5, 1, 9, 8, 0, 0, 7, 0, 0, 0, 7, 8, 6, 7, 4, 2, 7, 0, 0, 3, 3, 5, 0, 9, 5, 9, 7, 1, 9, 4, 4, 0, 9, 1, 1, 8, 0, 0, 2, 6, 1, 8, 6, 1, 7, 2, 7, 7, 0, 8, 5, 2, 0, 7, 7, 8, 1, 2, 7, 9, 2, 0, 5, 9, 5, 6, 0, 1, 5, 8, 1, 7]
var countIntegersList = Array(repeating: 0, count: 10)

for randomInteger in randomIntegersList {
    countIntegersList[randomInteger] += 1 // (3) i++ is not allowed
}

print(countIntegersList)

// 7.9
print("Question 7.9")

let doubleArray = [1.9, 2.5, 3.7, 2, 1.5, 6, 3, 4, 5, 2]
var minimumNumber = doubleArray[0]

for number in doubleArray {
    if number < minimumNumber {
        minimumNumber = number
    }
}
print(minimumNumber)

print()

// 7.26
print("Question 7.26")

let list1 = [2, 5, 6, 1, 6]
let list2 = [2, 5, 6, 1, 6]
let list3 = [2, 5, 6, 6, 1]

var isIdentical = true
for i in 0..<list1.count {
    if list1[i] != list2[i] {
        isIdentical = false
    }
}
if isIdentical {
    print("Two lists are strictly identical")
} else {
    print("Two lists are not strictly identical")
}

isIdentical = true
for i in 0..<list1.count {
    if list3[i] != list1[i] {
        isIdentical = false
    }
}
if isIdentical {
    print("Two lists are strictly identical")
} else {
    print("Two lists are not strictly identical")
}

print()

// 7.30
print("Question 7.30")

let listA = [3, 4, 5, 5, 5, 5, 4, 5]
let listB = [3, 4, 5, 5, 6, 5, 5, 4, 5]

var isConsecutiveFour = false
var countConsecutive = 1
var elementToCompare = listA[0]
for i in listA[1...] {
    if i == elementToCompare {
        countConsecutive += 1
    } else {
        countConsecutive = 1
    }
    
    if countConsecutive == 4 {
        isConsecutiveFour = true
    }
    
    elementToCompare = listA[i]
}
if isConsecutiveFour == true {
    print("The list has consecutive fours")
} else {
    print("The list has no consecutive fours")
}

isConsecutiveFour = false
countConsecutive = 1
elementToCompare = listA[0]
for i in listB[1...] {
    if i == elementToCompare {
        countConsecutive += 1
    } else {
        countConsecutive = 1
    }
    
    if countConsecutive == 4 {
        isConsecutiveFour = true
    }
    
    elementToCompare = listB[i]
}
if isConsecutiveFour == true {
    print("The list has consecutive fours")
} else {
    print("The list has no consecutive fours")
}

print()
