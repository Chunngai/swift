// Enumerations

// Enumeration Syntax
enum CompassPoint {
case north
case south
case east
case west
}

// multiple cases on a single line
enum Planet {
case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune 
} 

/*
Each enumeration definition defines a new type.
*/
var directionToHead = CompassPoint.west

/* 
Once directionToHead is declared as a CompassPoint, 
you can set it to a different CompassPoint value using a shorter dot syntax
*/

directionToHead = .east

// Matching Enumeration Values with a Switch Statement
directionToHead = .south
switch directionToHead {
case .north:
print("Lots of planets have a north")
case .south:
print("Watch out for penguins")
case .east:
print("Where the sun rises")
case .west:
print("Where the skies are blue")
}


let somePlanet = Planet.earth
switch somePlanet {
case .earth:
print("Mostly harmless")
default:
print("Not a safe place for humans")
}

// Iterating over Enumation Cases
/*
For some enumerations, it’s useful to have a collection of all of that enumeration’s cases. 
You enable this by writing : CaseIterable after the enumeration’s name. 
Swift exposes a collection of all the cases as an allCases property of the enumeration type.
*/
enum Beverage: CaseIterable {
case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available") 

for beverage in Beverage.allCases {
print(beverage)
}

// Associated Values
enum Barcode {
case upc(Int, Int, Int, Int)
case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)

productBarcode = .qrCode("ABCDEFGHIJKLMNOP") 
/*
At this point, the original Barcode.upc and its integer values 
are replaced by the new Barcode.qrCode and its string value. 
Constants and variables of type Barcode can store either a .upc or a .qrCode 
(together with their associated values), 
but they can store only one of them at any given time.
*/

switch productBarcode {
case .upc(let numberSystem, let manufacturer, product, check):
print("UPC: \(numberYsytem), \(manufacturer), \(product), \(check)")
case .qrCode(let productCode):
print("QR code: \(productCode.")
}

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
print("UPC: \(numberYsytem), \(manufacturer), \(product), \(check)")
case let .qrCode(productCode):
print("QR Code: \(qrCode")

// Raw Values
/*
As an alternative to associated values, 
enumeration cases can come prepopulated with default values (called raw values), 
which are all of the same type.
*/
enum ASCIIControlCharacter: Character {
case tab = "\t"
case lineFeed = "\n"
case carriageReturn = "\r"
}
/*
Each raw value must be unique within its enumeration declaration.
*/

// Implicitly Assigned Raw Values
/*
When you’re working with enumerations that store integer or string raw values, 
you don’t have to explicitly assign a raw value for each case. 
When you don’t, Swift automatically assigns the values for you.
For example, when integers are used for raw values, 
the implicit value for each case is one more than the previous case. 
If the first case doesn’t have a value set, its value is 0.
*/
enum Planet: Int {
case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune 
} 

/*
When strings are used for raw values, 
the implicit value for each case is the text of that case’s name.
*/
enum CompassPoint: String {
case north, south, east, west
}

// access the raw value
let earthsOrder = Planet.earch.rawValue // 3
let sunsetDirection = CompassPoint.west.rawValue // west

// Initializing from a Raw Value
/*
If you define an enumeration with a raw-value type, 
the enumeration automatically receives an initializer 
that takes a value of the raw value’s type (as a parameter called rawValue) 
and returns either an enumeration case or nil. 
You can use this initializer to try to create a new instance of the enumeration.
*/
let possiblePlanet = Planet(rawValue: 7) // possiblePlanet is of type Planet? and equals Planet.uranus 
/*
Not all possible Int values will find a matching planet, however. 
Because of this, the raw value initializer always returns an optional enumeration case. 
In the example above, possiblePlanet is of type Planet?, or “optional Planet.”
*/

let positionToFind = 11
if let somePlanet = Planet(rawValue: positionToFind) {
switch somePlanet {
case .earth:
print("Mostly harmless")
default:
print("Not a safe place for humans")
}
} else {
print("There isn't a planet at position \(position)")
}

// Recursive Enumerations
/*
A recursive enumeration is an enumeration that 
has another instance of the enumeration as the associated value 
for one or more of the enumeration cases. 
You indicate that an enumeration case is recursive by writing indirect before it, 
which tells the compiler to insert the necessary layer of indirection.
*/
enum ArithmeticExpression {
case Number(Int)
indirect case addition(ArithmeticExpression, ArithmeticExpression)
indirect case multiplication(ArithmeticExpression, ArithmeticExpression)

/*
You can also write indirect before the beginning of the enumeration 
to enable indirection for all of the enumeration’s cases 
that have an associated value
*/
indirect enum ArithmeticExpression {
case number(Int)
case addition(ArithmeticExpression, ArithmeticExpression)
case multiplication(ArithmeticExpression, ArithmeticExpression)

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
switch ArithmeticExpression {
case let .number(value):
return value
case let .addition(left, right):
return evaluate(left) + evaluate(right)
case let .multiplication(left, right):
return evaluate(left) * evaluate(right)
}
}

print(evaluate(product))
