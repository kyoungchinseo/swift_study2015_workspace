//: Playground - noun: a place where people can play

import UIKit

func hammingWeight(value:Int) -> (String, Int) {        var r1:String = ""    var r2:Int = 0    var rem:Int = value        while rem != 0 {    r1 = String(rem%2) + r1    rem = rem / 2    r2 = r2 + 1    }        return (r1, r2)}var value:Int = 11var result = hammingWeight(value)result.0