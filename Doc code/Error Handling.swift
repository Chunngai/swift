/* Error Handling */

/* Representing and Throwing Errors */
enum VendingMachineError: Error {
  case invalidSelection
  case InsufficientFunds(coinsNeeded: Int)
  case outOfStock
}

throw VendingMachineError.InsufficientFunds(coinsNeeded: 5)

/* Handling Errors */
// Propagating Errors Using Throwing Functions
func canThrowErrors() throws -> String

func cannotThrowErrors() -> String

struct Item {
  var price: Int
  var count: Int
}

class VendingMachine {
  var inventory = [
  "Candy Bar": Item(price: 12, count: 7),
  "chips": Item(price: 10, count: 4),
  "Pretzels": Item(price: 7, count: 11)
  ]
  var coinsDeposited = 0

  func vend(itemNamed name: String) throws {
    guard let item = inventory[name] else {
      throw VendingMachineError.invalidSelection
    }

    guard item.count > 0 else {
      throw VendingMachineError.outOfStock
    }

    guard item.price <= coinsDeposited else {
      throw VendingMachineError.InsufficientFunds(coinsNeeded: item.price - coinsDeposited)
    }

    coinsDeposited -= item.price

    var newItem = ite,
    newItem.count -= 1
    inventory[name] = newItem

    print("Dispensing \(name)")
  }
}

let favoriteSnakes = [
"Alice": "Chips",
"Bob": "Licorice",
"Eve": "Pretzels",
]
func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
  let snakeName = favoriteSnakes[person] ?? "Candy Bar"
  try vendingMachine.vend(itemNamed: snackName)
}

struct PurchasedSnack {
  let name: String
  init(name: String, vendingMachine: VendingMachine) throws {
    try vendingMachine.vend(itemNamed: name)
    self.name = name
  }
}

// Handling Errors Using Do-Catch
var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8
do {
  try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
  print("Success! Yum.")
} catch VendingMachineError.invalidSelection {
  print("Invalid Selection")
} catch VendingMachineError.outOfStock {
  print("Out of Stock")
} catch VendingMachineError.InsufficientFunds(let coinsNeeded) {
  print("Insufficient funds. Please insert an additional (coinsNeeded) coins")
} catch {
  print("Unexpected error: \(error)")
}

func nourish(with item: String) throws {
  do {
    try vendingMachine.vend(itemNamed: item)
  } catch is VendingMachineError {
    print("Invalid selection, out of stock, or not enough money")
  }
}

do {
  try nourish(with: "Beet-Flavored Chips") {
  } catch {
    print("Unexpected non-vending-machine-related-error: \(error)")
  }
}

// Converting Errors to Optional Values
let x = try? someThrowingFunction()

let y: Int?
do {
  y = try someThrowingFunction()
} catch {
  y = nil
}

func fetchData() -> Data? {
  if let data = try? fetchDataFromDisk() {
    return data
  }
  if let data = try? fetchDataFromServer() {
    return data
  }
  return nil
}

// Disabling Error Propagation
let photo = try! loadImage(atPath: "./Resources/JohnAppleseed.jpg")

/* Specifying Cleanup Actions */
func processFile(filename: String) throws {
  if exists(filename) {
    let file = open(filename)
  }
  defer {
    close(file)
  }
  while let line = try file.readline() {
    // ...
  }
}
