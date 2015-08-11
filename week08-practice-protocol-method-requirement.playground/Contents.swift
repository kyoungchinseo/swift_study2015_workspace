//: Playground - noun: a place where people can play

import UIKit

protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    
    func random() -> Double {
        lastRandom = ((lastRandom * a + c) % m)
        return lastRandom / m
    }
}

let generator = LinearCongruentialGenerator()

print("Here's a random number: \(generator.random())")

generator.random()
generator.random()
generator.random()
generator.random()
generator.random()
generator.random()

// mutating method requirements

protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case Off, On
    mutating func toggle() {
        switch self {
        case Off:
            self = On
        case On:
            self = Off
        }
    }
}

var lightSwitch = OnOffSwitch.Off

lightSwitch.toggle()
lightSwitch.toggle()
lightSwitch.toggle()
lightSwitch.toggle()
