//: Playground - noun: a place where people can play

import UIKit

struct Fahrenheit {
    var temparature: Double
    
    init() {
        temparature = 32.0
    }
}

var f = Fahrenheit()
f.temparature


// default property value
struct Fah {
    var temparature = 32.0
}

var fah = Fah()
fah.temparature

struct Celsius {
    var temperatureInCelsius: Double
    
    init(fromFAhrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}

let boiling = Celsius(fromFAhrenheit: 212.0)
boiling.temperatureInCelsius

let freezing = Celsius(fromKelvin: 273.15)
freezing.temperatureInCelsius


struct Color {
    let red,green, blue: Double
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white: Double) {
        red = white
        green = white
        blue  = white
    }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)
//let vGreen = Color(0.0,1.0,0.0)


//Initializer parameters without external names
let bodyTemp = Celsius(37.0)  // init(_ celsius: Double)
bodyTemp.temperatureInCelsius


// optional property types

class SurveyQuestion {
    var text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
// 아직 초기화가 미루어 져야 하는 사례
let cheese = SurveyQuestion(text: "Do you like cheese?")
cheese.ask()
cheese.text

// default initializer

class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}

var item = ShoppingListItem()
item.quantity
item.name = "hello"

item.name

struct Size {
    var width = 0.0, height = 0.0
}

let towByTwo = Size(width: 2.0, height: 2.0)
towByTwo.width

let basic = Size()
basic.height

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    
    init() {}
    
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}


let basicRect = Rect()
basicRect.origin.x
basicRect.size.width


let originRect = Rect(origin: Point(x: 2.0, y:2.0), size: Size(width: 5.0, height: 5.0))
originRect.origin.x

let centerRect = Rect(center: Point(x: 4.0, size: 4.0), size: Size(width: 3.0, height: 3.0))
centerRect.size.width














