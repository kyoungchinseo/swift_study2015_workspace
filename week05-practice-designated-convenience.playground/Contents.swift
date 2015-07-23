//: Playground - noun: a place where people can play

import UIKit

class Food {
    var name: String
    init (name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}


// Food desginated initializer
let namedMeat = Food(name: "Bacon")
namedMeat.name
// Food conveninece initializer
let unnamed = Food()
unnamed.name


class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

let oneMystery = RecipeIngredient()
// conv init
let oneBacon = RecipeIngredient(name: "Bacon")
// designated init
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)

oneBacon.name
oneBacon.quantity

sixEggs.name
sixEggs.quantity

class ShoppingList: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? "\u{2665}" : "\u{1F1FA}\u{1F1F8}"
        return output
    }
}

var breakfast = [
    ShoppingList(),
    ShoppingList(name: "Bacon"),
    ShoppingList(name: "Eggs", quantity: 6)
]
breakfast[0].name = "Apple"
breakfast[0].purchased = true

for item in breakfast {
    print(item.description)
}

//
// Fallable initializer
//
struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}

let someCreature = Animal(species: "Giraffe")
someCreature?.species

let voidCreature = Animal(species: "")

// fallable for enumerations

enum TemperatureUnit {
    case Kelvin, Celsius, Fahrenheit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .Kelvin
        case "C":
            self = .Celsius
        case "F":
            self = .Fahrenheit
        default:
            return nil
        }
    }
}

let tempF = TemperatureUnit(symbol: "F")
tempF
tempF == .Fahrenheit

let unknownT = TemperatureUnit(symbol: "V")


// fallable for classes

class Product {
    let name: String!
    init?(name: String){
        self.name = name
        if name.isEmpty {return nil}
    }
}

if let bowTie = Product(name: "bow tie") {
    print("The product name is \(bowTie.name)")
}

class CartItem: Product {
    let quantity: Int!
    init?(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
        if quantity < 1 { return nil }
    }
}

if let twoSocks = CartItem(name: "Sock", quantity: 2) {
    print("Item: \(twoSocks.name), quantity: \(twoSocks.quantity)")
}
if let zeroShirts = CartItem(name: "shirt", quantity: 0) {
    print("Item: \(zeroShirts.name), quantity: \(zeroShirts.quantity)")
} else {
    print("Nil")
}
if let oneUnamed = CartItem(name: "", quantity: 1) {
    print("able")
} else {
    print("unable")
}


// init with closure/function

struct CheckerBoard {
    let boardColors: [Bool] = {
        var temporaryBoard = [Bool]()
        var isBlack = false
        for i in 1...10 {
            for j in 1...10 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard
    }()
    func squaredIsBlackAtRow(row: Int, column: Int)->Bool {
        return boardColors[(row*10)+column]
    }
}

let board = CheckerBoard()
print(board.squaredIsBlackAtRow(0, column: 1))
print(board.squaredIsBlackAtRow(9, column: 9))


















