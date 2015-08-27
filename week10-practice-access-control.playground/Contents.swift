//: Playground - noun: a place where people can play

import UIKit

struct TrackedString {
    private(set) var numberOfEdits = 0
    var value: String = "" {
        didSet {
            numberOfEdits++
        }
    }
}

var stringToEdit = TrackedString()
stringToEdit.value = "This string will be tracked."
stringToEdit.value += "This edit will increment numberOfEidts."
stringToEdit.value += " So will this one."
print("The number of edits is \(stringToEdit.numberOfEdits)")

