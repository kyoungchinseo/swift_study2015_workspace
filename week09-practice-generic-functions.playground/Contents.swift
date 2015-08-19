//: Playground - noun: a place where people can play

import UIKit

func swapTwoValues<T>(inout a: T, inout _ b:T)
{
    let temp = a
    a = b
    b = temp
}


var someInt = 3
var anotherInt = 107
swapTwoValues(&someInt, &anotherInt)
someInt
anotherInt

var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)
someString
anotherString

