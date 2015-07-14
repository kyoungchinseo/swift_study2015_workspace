//: Playground - noun: a place where people can play

import UIKit

enum someEnum {
    case North
    case South
    case East
    case West
}


var venum = someEnum.East

if venum == .West {
    print("Hello")
} else {
    print("World")
}


enum Barcode {
    case UPCA(Int,Int,Int,Int)
    case QRCode(String)
}

var productBarcode = Barcode.UPCA(8, 85090, 5111, 3)

var productQRCode = Barcode.QRCode("ABDKEKGJGLLEFG")

var productCode = productQRCode

switch productCode {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
    print("UPCA \(numberSystem), \(manufacturer), \(product), \(check)")
case .QRCode(let code):
    print("QRCode: \(code)")
}


enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

print(Planet.Earth.rawValue)
print(Planet.Earth.hashValue)

print(Planet.Mercury.rawValue)
print(Planet.Mercury.hashValue)