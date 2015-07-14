//: Playground - noun: a place where people can play

import UIKit


let names = ["Chris","Tomas","Alex","Elvis","Barry","Denis"]

func backward(s1: String, s2: String) -> Bool{
    return s1 > s2
}
var sorted = names.sort()
var reversed = names.sort(backward)

var reversed_closure = names.sort({
    (s1: String, s2: String) -> Bool in
    return s1 > s2
})

var reversed_closure_optimized = names.sort({
    s1, s2 in return s1 > s2
})

var reversed_closure_noreturn = names.sort({
    s1, s2 in s1 > s2
})

var reversed_closure_shortargument = names.sort({
    $0 > $1
})

var reversed_closure_trailing = names.sort() {
    $0 > $1
}

let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five",
    6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers = [16, 58, 510]


let strings = numbers.map {
    (var number) -> String in
    var output = ""
    while number>0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    
    return output
}

58 % 10
(58 / 10) % 10

// 언제 쓸 수 있는가? 쓸 수 있는 함수 sort(), map()같은 함수에 사용 가능한가?
// custom 하게는 어떻게 쓸 수 있는가?

func makeIncrement(forIncrement amount: Int)-> Void -> Int {
    var runningTotal = 0
    func incrementer()->Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}


let incrementByTen = makeIncrement(forIncrement: 10)

incrementByTen()
incrementByTen()
incrementByTen()



// closure is reference type이다.

func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)!"
}

print(sayHello(to: "Bill", and: "Cosby"))











