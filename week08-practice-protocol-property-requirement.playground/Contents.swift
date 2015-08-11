//: Playground - noun: a place where people can play

import UIKit

// property requirement 

protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
}

let john = Person(fullName: "John Lenon")
john.fullName

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    
    init(name:String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}

var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
ncc1701.fullName