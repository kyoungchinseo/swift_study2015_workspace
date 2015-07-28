//: Playground - noun: a place where people can play

import UIKit

// currency["달러","원"]  1달러는 원으로 얼만지 숫자로
// currency["원","달러"]  1000원은 달러로 얼만지
// currency["엔","달러"]  100엔은 달러로 얼만지
// currency["달러","엔"]

struct Currency {
    let currencyRate: Dictionary = ["달러":1, "원": 1166, "엔": 123.63]
    let monetaryUnit: Dictionary = ["달러":1, "원": 1000, "엔": 100]
    subscript(origin: String, target: String)-> Double {
        return Double(currencyRate[target]!) / Double(currencyRate[origin]!) * Double(monetaryUnit[origin]!)
    }
}

var currency = Currency()
print(currency["달러","원"])
print(currency["엔","달러"])
print(currency["엔","원"])


class vehicle {
    var speed = 0.0
    var desc: String {
        return "speed: \(speed)"
    }
    
    func makeNoise() {
        
    }
}

class train: vehicle {
    override func makeNoise() {
        print("WOW")
    }
}

var d: train = train()

d.makeNoise()


class superClass {
    var vv:String
    init (input: String) {
        vv = input
    }
}

class subClass: superClass {
    var hey:String
    init(ccc: String) {
        hey = ccc
    }
    convenience init(ii: String) {
        super.init(input: "qua")
        hey = ii
    }
}



