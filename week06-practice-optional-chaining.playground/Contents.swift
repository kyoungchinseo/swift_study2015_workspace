//: Playground - noun: a place where people can play

import UIKit

class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()

// optional chaining (! -> ?)
if let roomCount = john.residence?.numberOfRooms {
    print("john's residence has \(roomCount)")
} else {
    print("Unable to retrieve")
}

john.residence = Residence()
if let roomCount = john.residence?.numberOfRooms {
    print("john's residence has \(roomCount)")
} else {
    print("Unable to retrieve")
}







