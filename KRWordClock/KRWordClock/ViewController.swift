//
//  ViewController.swift
//  KRWordClock
//
//  Created by Kyoungchin Seo on 2015. 7. 13..
//  Copyright © 2015년 nhnnext. All rights reserved.
//

import Cocoa


class ViewController: NSViewController {
    
    
    @IBOutlet var hourPreAmPmPre: NSTextField!
    @IBOutlet var hourPreAmPost: NSTextField!
    @IBOutlet var hourPrePmPost: NSTextField!
    @IBOutlet var hourTen: NSTextField!
    @IBOutlet var hourOne: NSTextField!
    @IBOutlet var hourTwo: NSTextField!
    @IBOutlet var hourThree: NSTextField!
    @IBOutlet var hourFour: NSTextField!
    @IBOutlet var hourFivePre: NSTextField!
    @IBOutlet var hourSixPre: NSTextField!
    @IBOutlet var hourFiveSixPost: NSTextField!
    @IBOutlet var hourSevenPre: NSTextField!
    @IBOutlet var hourSevenPost: NSTextField!
    @IBOutlet var hourEightPre: NSTextField!
    @IBOutlet var hourEightPost: NSTextField!
    @IBOutlet var hourNinePre: NSTextField!
    @IBOutlet var hourNinePost: NSTextField!
    @IBOutlet var hourPost: NSTextField!
    
    @IBOutlet var minuteTen: NSTextField!
    @IBOutlet var minuteTwenty: NSTextField!
    @IBOutlet var minuteThirty: NSTextField!
    @IBOutlet var minuteForty: NSTextField!
    @IBOutlet var minuteFifty: NSTextField!
    
    @IBOutlet var minuteOne: NSTextField!
    @IBOutlet var minuteTwo: NSTextField!
    @IBOutlet var minuteThree: NSTextField!
    @IBOutlet var minuteFour: NSTextField!
    
    @IBOutlet var midnightPre: NSTextField!
    @IBOutlet var midnightPostMoonPre: NSTextField!
    @IBOutlet var minuteFiveNoonPost: NSTextField!
    
    @IBOutlet var minuteSix: NSTextField!
    @IBOutlet var minuteSeven: NSTextField!
    @IBOutlet var minuteEight: NSTextField!
    @IBOutlet var minuteNine: NSTextField!
    
    @IBOutlet var minutePost: NSTextField!
    
    @IBOutlet var secondPost: NSTextField!
    
    var ClockSigns: [String:[NSTextField]!] {
        return ["HourAMPM":  [hourPreAmPmPre, hourPreAmPost, hourPrePmPost],
                "HourNumber":[hourOne, hourTwo, hourThree, hourFour, hourFivePre,
                              hourSixPre, hourSevenPre, hourEightPre, hourNinePre, hourTen],
                "HourNumberPost":[hourFiveSixPost, hourSevenPost, hourEightPost, hourNinePost],
                "NoonMidnight": [midnightPre, midnightPostMoonPre, minuteFiveNoonPost],
                "MinuteTens":[minuteTen, minuteTwenty, minuteThirty, minuteForty, minuteFifty],
                "MinuteOnes":[minuteOne, minuteTwo, minuteThree, minuteFour, minuteFiveNoonPost,
                              minuteSix, minuteSeven, minuteEight, minuteNine],
                "TimeUnitSigns":[hourPost, minutePost,secondPost]
        ]
    }
    
    var bShowSec: Bool = false
    
    var timer = NSTimer()
    
    let color = NSColor.redColor()
    
    func clearColor() {
        for (_, item) in ClockSigns {
            for v in item {
                v.textColor = NSColor.blackColor()
            }
        }
    }
    
    func setAMPM(DateComponent: NSDateComponents) {
        
        let hour: Int = DateComponent.hour
        let minute: Int = DateComponent.minute
        let second: Int = DateComponent.second
        
        if (hour / 12 != 0) && ((minute != 0) || (second != 0)) {
        if (hour / 12 < 1) {
            // am
            ClockSigns["HourAMPM"]![0].textColor = color
            ClockSigns["HourAMPM"]![1].textColor = color
        } else {
            // pm
            ClockSigns["HourAMPM"]![0].textColor = color
            ClockSigns["HourAMPM"]![2].textColor = color
        }
        }
    }
    
    func setHours(DateComponent: NSDateComponents) {
        
        let hour: Int = DateComponent.hour
        let minute: Int = DateComponent.minute
        let second: Int = DateComponent.second
        
        if (hour % 12 == 0) && (minute == 0) && (second == 0) { // 12 or 24
            if (hour / 12 == 1) {
                // 정오
                ClockSigns["NoonMidnight"]![1].textColor = color
                ClockSigns["NoonMidnight"]![2].textColor = color
            } else {
                // 자정
                ClockSigns["NoonMidnight"]![0].textColor = color
                ClockSigns["NoonMidnight"]![1].textColor = color
            }
        } else {
            let indexHour: Int = hour % 12
            
            switch (indexHour) {
            case 0: // 12시
                ClockSigns["HourNumber"]![9].textColor = color
                ClockSigns["HourNumber"]![1].textColor = color
            case 1...4, 10:
                ClockSigns["HourNumber"]![indexHour-1].textColor = color
            case 5...9:
                ClockSigns["HourNumber"]![indexHour-1].textColor = color
                ClockSigns["HourNumberPos"]![indexHour-5].textColor = color
            case 11: // 11시
                ClockSigns["HourNumber"]![9].textColor = color
                ClockSigns["HourNumber"]![0].textColor = color
            default:
                ClockSigns["TimeUnitSigns"]![0].textColor = color
            }
            ClockSigns["TimeUnitSigns"]![0].textColor = color
        }
    }
    
    func setMinutes(minute: Int) {
        let indexTen: Int = minute/10
        
        if indexTen != 0 {
            ClockSigns["MinuteTens"]![indexTen-1].textColor = color
        }
        if (indexTen > 0) {
            ClockSigns["MinuteTens"]![0].textColor = color
        }
        
        let indexOne: Int = minute%10
        if (indexOne != 0) {
            ClockSigns["MinuteOnes"]![indexOne-1].textColor = color
        }
        
        if (minute%10 != 0) || (minute/10 != 0) {
            //minutePost.textColor = color
            ClockSigns["TimeUnitSigns"]![1].textColor = color
        }
        
    }
    
    func setSeconds(second: Int) {
        let secColor = NSColor.blueColor()
        
        let indexTen: Int = second/10
        if (indexTen != 0) {
            ClockSigns["MinuteTens"]![indexTen-1].textColor = secColor
        }
        if (indexTen > 0) {
            ClockSigns["MinuteTens"]![0].textColor = secColor
        }
        
        let indexOne: Int = second%10
        if (indexOne != 0 ) {
            ClockSigns["MinuteOnes"]![indexOne-1].textColor = secColor
        }
        
        if (second%10 != 0) || (second/10 != 0) {
            ClockSigns["TimeUnitSigns"]![2].textColor = secColor
        }
    }
    
    func counting() {
        let gregorian = NSCalendar.currentCalendar()
        let dayComponents = gregorian.components([.Hour, .Minute, .Second], fromDate: NSDate())
        
        clearColor()
        print("\(dayComponents)")
        
        // hours
        setAMPM(dayComponents)
        
        
        setHours(dayComponents)
        
        // minutes & seconds
        bShowSec = !bShowSec
        if (bShowSec) { // draw second and minute
            setMinutes(dayComponents.minute)
            setSeconds(dayComponents.second)
        } else { // draw only minute
            setMinutes(dayComponents.minute)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: Selector("counting"), userInfo: nil, repeats: true)
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

