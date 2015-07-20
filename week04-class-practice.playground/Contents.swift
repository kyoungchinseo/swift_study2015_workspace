//: Playground - noun: a place where people can play

import UIKit



struct Resolution {
    var width  = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution();
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    
}


// initialization
var someRes = Resolution()
someRes.width = 1920
someRes.height = 1080


var someVmode = VideoMode()


someRes.width
someVmode.resolution.height

let hd = Resolution(width: 1920, height: 1080)
hd.height

var cinema = hd
cinema.height

cinema.height = 768
cinema.width = 1280
// value type check
hd.width
cinema.width


let ten = VideoMode()
ten.resolution = hd
ten.interlaced = true
ten.name = "1080i"
ten.frameRate = 25.0


let alsoTen = ten
alsoTen.frameRate = 60.0


let alsoAlsoTen = alsoTen
// reference type check
alsoTen.frameRate
alsoAlsoTen.frameRate
ten.frameRate




