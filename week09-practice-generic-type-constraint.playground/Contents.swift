//: Playground - noun: a place where people can play

import UIKit

func findStringIndex(array: [String], _ valueToFind: String) -> Int? {
    for (index, value) in array.enumerate() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let strings = ["cat", "dog", "llama", "parakeet","terrapin"]

if let foundIndex = findStringIndex(strings, "llama") {
    print("The index of llama is \(foundIndex)")
}




func findIndex<T: Equatable>(array: [T], _ valueToFind: T) -> Int? {
    for (index, value) in array.enumerate() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let doubleIndex = findIndex([3.14159, 0.1, 0.25], 0.1)
doubleIndex

let stringIndex = findIndex(["Mike","Malcome","Andrea"], "Andrea")
stringIndex

