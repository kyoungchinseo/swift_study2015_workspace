//: Playground - noun: a place where people can play

import UIKit


extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

3.repetitions({
    print("Hello!")
})

extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt =  3
someInt.square()

extension Int {
    subscript(var digitIndex: Int) -> Int {
        var decimalBase = 1
        while digitIndex > 0 {
            decimalBase *= 10
            --digitIndex
        }
        return (self/decimalBase) % 10
    }
}

764843835[0]

extension Int {
    enum Kind {
        case Negative, Zero, Positive
    }
    
    var kind: Kind {
        switch self {
        case 0:
            return .Zero
        case let x where x > 0:
            return .Positive
        default:
            return .Negative
        }
    }
}

func printIntegerKinds(numbers: [Int]) {
    for number in numbers {
        switch number.kind {
        case .Negative:
            print("- ",appendNewline: false)
        case .Zero:
            print("0 ",appendNewline: false)
        case .Positive:
            print("+ ", appendNewline: false)
        }
    }
    print("")
}

printIntegerKinds([3,19,-27,0,-6,0,7])



