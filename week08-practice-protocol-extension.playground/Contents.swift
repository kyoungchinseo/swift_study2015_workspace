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

extension RandomNumberGenerator {
    func randomBool() -> Bool {
        return random() > 0.5
    }
}

let generator = LinearCongruentialGenerator()
print("Here's a random number: \(generator.random())")

print("And here's a random Boolean: \(generator.randomBool())")


protocol TextRepresentable {
    func asText() -> String
}

protocol PrettyTextRepresentable: TextRepresentable {
    func asPrettyText() -> String
}

extension PrettyTextRepresentable {
    func asPrettyText() -> String {
        return asText()
    }
}

extension CollectionType where Generator.Element : TextRepresentable {
    func asList() -> String {
        return "(" + ",".join(map({$0.asText()})) + ")"
    }
}

struct Hamster: TextRepresentable {
    var name: String
    func asText() ->String {
        return "A hamster named \(name)"
    }
}

let murrayHamster = Hamster(name: "Murray")
let morganHamster = Hamster(name: "Morgan")
let mauriceHamster = Hamster(name: "Maurice")
let hamsters = [murrayHamster, morganHamster, mauriceHamster]

print(hamsters.asList())

