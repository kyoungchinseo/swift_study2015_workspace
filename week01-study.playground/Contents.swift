//: Playground - noun: a place where people can play

import UIKit

func hammingWeight(value:Int) -> (String, Int) {        var r1:String = ""    var r2:Int = 0    var rem:Int = value        while rem != 0 {    r1 = String(rem%2) + r1    rem = rem / 2    r2 = r2 + 1    }        return (r1, r2)}var value:Int = 11var result = hammingWeight(value)result.0result.1




// simple
func bcoef(n:Int, k:Int) -> (Int) {
    var res:Int = 1
    var v:Int = k
    if (k > n-k) {
        v = n-k
    }
    for i in 0..<v {
        res *= (n-i)
        res /= (i+1)
    }
    return res
}

func makePascalTriangle(numOfRows: Int) -> ([[Int]]) {
    var arr = Array(count: numOfRows, repeatedValue: Array(count: 1, repeatedValue: 0))
    for i in 0..<numOfRows {
        var tArr = Array(count: i+1, repeatedValue: 0)
        for j in 0...i {
            tArr[j] += bcoef(i, k: j)
        }
        arr[i] = tArr;
    }
    
    return arr
}

var resArray = makePascalTriangle(8)
resArray


















