//: Playground - noun: a place where people can play

import UIKit


struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var item = FixedLengthRange(firstValue: 0, length: 3)

item.length
item.firstValue


// lazy 

class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()

manager.data.append("Some data")
manager.data.append("Some more data")

struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width  = 0.0
    var height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    
    var center: Point {
        get {
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.height/2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width/2)
            origin.y = newCenter.y - (size.height/2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0,y: 0.0), size: Size(width: 10.0, height: 10.0))

let initSC = square.center
square.center = Point(x: 15.0, y: 15.0)

square.center.x
square.center.y

square.origin.x
square.origin.y



class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if (totalSteps > oldValue ) {
                print("Added \(totalSteps - oldValue)")
            }
        }
    }
}

let stepCounter = StepCounter()

stepCounter.totalSteps = 200

stepCounter.totalSteps = 360

stepCounter.totalSteps = 860





struct SomeStructure {
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty: Int {
        return 1
    }
}

SomeStructure.storedTypeProperty


class SomeClass {
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty: Int {
        return 27
    }
    class var
        overrideableComputedTypeProperty: Int {
        return 127
    }
}

SomeClass.storedTypeProperty
SomeClass.computedTypeProperty
SomeClass.overrideableComputedTypeProperty







