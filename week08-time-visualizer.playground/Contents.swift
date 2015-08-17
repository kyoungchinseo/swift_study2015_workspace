//: Playground - noun: a place where people can play

import UIKit



@objc protocol Time {
    var day: Int { get }
    var month: Int { get }
    var year: Int { get }
    optional var hour: Int { get }
    optional var minute: Int { get }
    optional var second: Int { get }
    
    func toString () -> String
}

class ShortDate : Time {
    @objc var day: Int
    @objc var month: Int
    @objc var year: Int
    
    init(day: Int, month: Int, year: Int) {
        self.day = day
        self.month = month
        self.year = year
    }
    
    @objc func toString () -> String {
        return "\(day)/\(month)/\(year)"
    }
}

class LongDate : ShortDate {
    var hour: Int = 0
    var minute: Int = 0
    var second: Int = 0
    
    convenience init(day: Int, month: Int, year: Int, hour: Int, minute: Int, second: Int) {
        self.init(day: day, month: month, year: year)
        self.hour = hour
        self.minute = minute
        self.second = second
    }
    
    override func toString() -> String {
        return super.toString() + " \(hour):\(minute):\(second)"
    }
}

var dates: [AnyObject] = [
    ShortDate(day: 5, month: 5, year: 2016),
    LongDate(day: 5, month: 5, year: 2016, hour:10, minute:1, second: 0)
]

for item in dates {
    let date = item as! Time
    
    print("\(date.toString())")                              // 5/5/2016 5/5/2016 10:1:0
    
    if let hours = date.hour {
        print("Hour of the day: \(hours)")                  // Hour of the day: 10
    }
}

