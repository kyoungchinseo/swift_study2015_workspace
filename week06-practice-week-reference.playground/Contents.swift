//: Playground - noun: a place where people can play

import UIKit

class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
    
    var apartment: Apartment?
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment {
    let number: Int
    init(number: Int) { self.number = number }
    
    weak var tenant: Person?
    
    deinit {
        print("Apartment #\(number) is being deinitialized")
    }
}

var john: Person?
var number73: Apartment?

john = Person(name: "John Lennon")
number73 = Apartment(number: 73)


// make strong reference cycle
john!.apartment = number73
number73!.tenant = john

john = nil
number73 = nil  // no deinitialization