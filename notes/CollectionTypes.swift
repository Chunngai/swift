// Collection Types

// Mutability of Collections
// assign to a var: the size and contents are mutable
// assign to a const: the size and contents are immutable

// Arrays

// Array Type Shorthand Syntax
/*
The type of a Swift array is written in full as Array<Element>, 
where Element is the type of values the array is allowed to store. 
You can also write the type of an array in shorthand form as [Element].
*/

// Creating an Empty Array
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")  // count

/*
Alternatively, if the context already provides type information, such as a function argument or an already typed variable or constant, 
you can create an empty array with an empty array literal, 
which is written as [] (an empty pair of square brackets)
*/
someInts.append(3) // append
someInts = []

// Creating an Array with a Default Value
var threeDoubles = Array(repeating: 0.0, count: 3)

// Creating an Array by Adding Two Arrays Together
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles

// Creating an Array with an Array Literal
var shoppingList: [String] = ["Eggs", "Milk"]
// which is equivalent to
var shoppingList = ["eggs", "Milk"]

// Accessing and Modifying an Array
// count
print("The shopping list contains \(shoppingList.count) items.")

// check if the array is empty
if shoppingList.isEmpty {
print("The shopping list is empty")
} else {
print("The shopping list is not empty")

// append
shoppingList.append("Flour")

// extend
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

// retrieve
var firstItem = shoppingList[0]

// modify an elem
shoppingList[0] = "Six eggs"

//  replace with an array
shoppingList[4...6] = ["Bananas", "Apples"]

// insert
shoppingList.insert("Maple Syrup", at: 0)

// remove
let mapleSyrup = shoppingList.remove(at: 0) // returns the elem
firstItem = shoppingList[0] // "Six eggs" again now

// pop
let apples = shoppingList.removeLast()

// Iterating Over an Array
for item in shoppingList {
print(item)
}

// enumerate
for (index, value) in shoppingList.enumerated() {
print("Item \(index = 1): \(value)")
}

// Sets

// Hash Values for Set Types

// Set Type Syntax
/*
The type of a Swift set is written as Set<Element>, where Element is the type that the set is allowed to store. 
Unlike arrays, sets do not have an equivalent shorthand form
*/

// Creating and Initializing an Empty Set
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

/*
Alternatively, if the context already provides type information, 
such as a function argument or an already typed variable or constant, 
you can create an empty set with an empty array literal
*/
letters.insert("a")
letters = [] // letters is still a set now

// Creating a Set with an Array Literal
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hiphop"]
// equivalent to
var favo :Set = ["Rock", "Classical", "Hiphop"]
/*
A set type cannot be inferred from an array literal alone, so the type Set must be explicitly declared
*/


// Accessing and Modifying a Set
// count
print("I have \(favoriteGenres.count) favorite music genres")

// check if the set is empty
if favoriteGenres.isEmpty {
print("As far as music goes, I'm not picky.")
} else {
print("I have particular music preferences.")
}

// insert
favoriteGenres.insert("Jazz") // an index is not required

// remove
/*
returns nil if the set did not contain it. 
Alternatively, all items in a set can be removed with its removeAll() method.
*/
if let removeGenre = favoriteGenres.remove("Rock") {
print("\(removeGenre)? I'm over it.")
} else {
print("I never much cared for that.")
}

// contains
if favoriteGenres.contains("Funk") {
print("I get up on the good foor.")
} else {
print("It's too funky in here.")

// Iterating Over a Set
for genre in favoriteGenres {
print("\(genre")
}

/*
Swift’s Set type does not have a defined ordering. 
To iterate over the values of a set in a specific order, 
use the sorted() method, which returns the set’s elements as an array sorted using the < operator.
*/
for genre in favoriteGenres.sorted() {
print("\(genre)")
}

// Performing Set Operations

// Fundamental Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

// Set Membership and Equality
let houseAnimals: Set = ["🐶", "🐱"] 
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"] 
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals == farmAnimals
houseAnimals.isSubSet(of: farmAnimals)
houseAnimals.isSuperset(of: farmAnimals)
houseAnimals.isStrictSubset(of: farmAnimals)
houseAnimals.isStrictSuperset(of: farmAnimals)
houseAnimals.isDisjoint(with: cityAnimals)

// Dictionaries

// Dictionary Type Shorthand Syntax
/*
The type of a Swift dictionary is written in full as Dictionary<Key, Value>, 
where Key is the type of value that can be used as a dictionary key, 
and Value is the type of value that the dictionary stores for those keys.
*/

/*
You can also write the type of a dictionary in shorthand form as [Key: Value].
*/

// Creatingba an Empty Dictionary
var namesOfIntegers = [Int: String]()

/*
If the context already provides type information, 
you can create an empty dictionary with an empty dictionary literal, 
which is written as [:] (a colon inside a pair of square brackets)
*/
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]

// Creating a Dictionary with a Dictionary Literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
// equivalent to
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

// Accessing and Modifying a Dictionary
// count
print("The airports dictionary contains \(airports.count) items.")

// isEmpty
if airports.isEmpty {
print("The airports dictionary is empty.")
} else {
print("The airport dictionary is not empty")

// add a key-value pair
airports["LHR"] = "London"

// modify the value
airports["LHR"] = "London Heathrow"

// update
/*
the updateValue(_:forKey:) method returns the old value after performing an update. 
This enables you to check whether or not an update took place.

The updateValue(_:forKey:) method returns an optional value of the dictionary’s value type. 
For a dictionary that stores String values, for example, the method returns a value of type String?, 
or “optional String”. 
This optional value contains the old value for that key if one existed before the update, 
or nil if no value existed
*/

if let oldValue = airports.updateValue("Dubin Airport", forKey: "DUB") {
print("The old value for DUB was \(oldValue.")
}

// retrieve
/*
Because it is possible to request a key for which no value exists, 
a dictionary’s subscript returns an optional value of the dictionary’s value type. 
If the dictionary contains a value for the requested key, 
the subscript returns an optional value containing the existing value for that key. 
Otherwise, the subscript returns nil
*/
if let airportName = airports["DUB"] {
print("The name of the airport is \(airportName).")
} else {
print("That airport is not in the airports dictionary.")
}

// remove
airports["APL"] = "Apple International"
airports["APL"] = nil

/*
removes the key-value pair if it exists and returns the removed value, 
or returns nil if no value existed
*/
if let removedValue = airports.removeValue(forKey: "DUB") {
print("The removed airport's name is \(removedValue).")
} else {
print("The airports dictionary does not contain a value for DUB.")
}

// Iterating Over a Dictionary
for (airportCode, airportName) in airports {
print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys { // not a method
print("Airport code: \(airportCode)")
}

for airportName in airports.values {
print("Airport name: \(airportName)")
}

/*
If you need to use a dictionary’s keys or values with an API 
that takes an Array instance, initialize a new array with the keys or values property
*/
let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)

/*
Swift’s Dictionary type does not have a defined ordering. 
To iterate over the keys or values of a dictionary in a specific order, 
use the sorted() method on its keys or values property
*/