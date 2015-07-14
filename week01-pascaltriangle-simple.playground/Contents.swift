//: Playground - noun: a place where people can play

import UIKit


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
