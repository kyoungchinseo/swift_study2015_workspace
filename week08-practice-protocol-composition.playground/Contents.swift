//: Playground - noun: a place where people can play

import UIKit

protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

struct Person: Named, Aged {
    var name: String
    var age: Int
}

func wishHappyBirthday(celebrator: protocol<Named, Aged>) {
    print("Happy birthday \(celebrator.name) - you're \(celebrator.age)!")
}



let birthdayPerson = Person(name: "Malcolm", age: 21)

wishHappyBirthday(birthdayPerson)


func wishHappyBirthday2(celebrator: Person) {
    print("Happy birthday \(celebrator.name) - you're \(celebrator.age)!")
}


let birthdayPerson2 = Person(name: "MalcolmX", age: 42)

wishHappyBirthday2(birthdayPerson2)