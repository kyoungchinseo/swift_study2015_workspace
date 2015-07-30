//: Playground - noun: a place where people can play

import UIKit

class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()
    
    var numberOfRooms: Int {
        return rooms.count
    }
    
    subscript(i: Int) -> Room {
    get {
        return rooms[i]
    }
    set {
        rooms[i] = newValue
    }
    }
    
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    
    var address: Address?
}


class Room {
    let name: String
    
    init(name: String) { self.name = name }
}

class Address{
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    
    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName
        } else if buildingNumber != nil {
            return buildingNumber
        } else {
            return nil
        }
    }
}

let john = Person()
if let roomCount = john.residence?.numberOfRooms {
     print("\(roomCount)")
} else {
    print("Unable")
}

let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acardia Rd."


john.residence?.address = someAddress


if john.residence?.printNumberOfRooms() != nil {
    print("possible")
} else {
    print("impossible")
}

if (john.residence?.address = someAddress ) != nil {
    print("possible")
} else {
    print("impossible")
}

let firstRoomName = john.residence?[0].name

john.residence?[0] = Room(name: "BathRoom")

// after Residence()
let johnHouse = Residence()
johnHouse.rooms.append(Room(name: "Living Room"))
johnHouse.rooms.append(Room(name: "Kitchen"))
john.residence = johnHouse

// 
let firstName = john.residence?[0].name
let secondName = john.residence?[1].name











