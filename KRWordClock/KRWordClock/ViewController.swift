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
   
    var allOfTextField: [NSTextField]! {
        return [hourPreAmPmPre, hourPreAmPost, hourPrePmPost,
                hourOne, hourTwo, hourThree, hourFour, hourFivePre, hourSixPre, hourFiveSixPost,
                hourSevenPre, hourSevenPost, hourEightPre, hourEightPost, hourNinePre, hourNinePost,
                hourTen, hourPost,
                minuteTen, minuteTwenty, minuteThirty, minuteForty, minuteFifty,
                minuteOne, minuteTwo, minuteThree, minuteFour,
                midnightPre, midnightPostMoonPre, minuteFiveNoonPost,
                minuteSix, minuteSeven, minuteEight, minuteNine, minutePost,
                secondPost ]}
    
    var bShowSec: Bool = false
    
    var timer = NSTimer()
    
    let color = NSColor.redColor()
    
    func clearColor() {
        for var i=0;i<allOfTextField.count;i++ {
            allOfTextField[i].textColor = NSColor.blackColor()
        }
    }
    
    func setAMPM(hour: Int) {
        if (hour / 12 == 1) {
            hourPreAmPmPre.textColor = color
            hourPrePmPost.textColor = color
        } else {
            hourPreAmPmPre.textColor = color
            hourPreAmPost.textColor = color
        }
    }
    
    func setHours(hour: Int) {
        if (hour % 12 == 0) { // 12 or 24
            if (hour / 12 == 1) {
                // 정오
                midnightPostMoonPre.textColor = color
                minuteFiveNoonPost.textColor = color
            } else {
                // 자정
                midnightPre.textColor = color
                midnightPostMoonPre.textColor = color
            }
        } else {
            switch (hour % 12) {
            case 1:
                hourOne.textColor = color
            case 2:
                hourTwo.textColor = color
            case 3:
                hourThree.textColor = color
            case 4:
                hourFour.textColor = color
            case 5:
                hourFivePre.textColor = color
                hourFiveSixPost.textColor = color
            case 6:
                hourSixPre.textColor = color
                hourFiveSixPost.textColor = color
            case 7:
                hourSevenPre.textColor = color
                hourSevenPost.textColor = color
            case 8:
                hourEightPre.textColor = color
                hourEightPost.textColor = color
            case 9:
                hourNinePre.textColor = color
                hourNinePost.textColor = color
            case 10:
                hourTen.textColor = color
            case 11:
                hourTen.textColor = color
                hourOne.textColor = color
            case 12:
                hourTen.textColor = color
                hourTwo.textColor = color
            default:
                hourPost.textColor = color
            }
            hourPost.textColor = color
        }
    }
    
    func setMinutes(minute: Int) {
        switch (minute/10) {
        case 1:
            minuteTen.textColor = color
        case 2:
            minuteTwenty.textColor = color
        case 3:
            minuteThirty.textColor = color
        case 4:
            minuteForty.textColor = color
        case 5:
            minuteFifty.textColor = color
        default:
            minuteTen.textColor = color
        }
        if (minute / 10 != 0) {
            minuteTen.textColor = color
        }
        
        switch (minute%10) {
        case 1:
            minuteOne.textColor = color
        case 2:
            minuteTwo.textColor = color
        case 3:
            minuteThree.textColor = color
        case 4:
            minuteFour.textColor = color
        case 5:
            minuteFiveNoonPost.textColor = color
        case 6:
            minuteSix.textColor = color
        case 7:
            minuteSeven.textColor = color
        case 8:
            minuteEight.textColor = color
        case 9:
            minuteNine.textColor = color
        default:
            minuteTen.textColor = color //
        }
        if (minute%10 != 0) || (minute/10 != 0) {
            minutePost.textColor = color
        }
        
    }
    
    func setSeconds(second: Int) {
        let secColor = NSColor.blueColor()
        
        switch (second/10) {
        case 1:
            minuteTen.textColor = secColor
        case 2:
            minuteTwenty.textColor = secColor
            minuteTen.textColor = secColor
        case 3:
            minuteThirty.textColor = secColor
            minuteTen.textColor = secColor
        case 4:
            minuteForty.textColor = secColor
            minuteTen.textColor = secColor
        case 5:
            minuteFifty.textColor = secColor
            minuteTen.textColor = secColor
        default:
            secondPost.textColor = secColor

        }
        
        switch (second%10) {
        case 1:
            minuteOne.textColor = secColor
        case 2:
            minuteTwo.textColor = secColor
        case 3:
            minuteThree.textColor = secColor
        case 4:
            minuteFour.textColor = secColor
        case 5:
            minuteFiveNoonPost.textColor = secColor
        case 6:
            minuteSix.textColor = secColor
        case 7:
            minuteSeven.textColor = secColor
        case 8:
            minuteEight.textColor = secColor
        case 9:
            minuteNine.textColor = secColor
        default:
            secondPost.textColor = secColor
        }
        
        if (second%10 != 0) || (second/10 != 0) {
            secondPost.textColor = secColor
        }
    }
    
    func counting() {
        let gregorian = NSCalendar.currentCalendar()
        let dayComponents = gregorian.components([.Hour, .Minute, .Second], fromDate: NSDate())
        
        clearColor()
        print("\(dayComponents)")
        
        // hours
        setAMPM(dayComponents.hour)
        setHours(dayComponents.hour)
        
        // minutes & seconds
        bShowSec = !bShowSec
        if (bShowSec) {
            setMinutes(dayComponents.minute)
            setSeconds(dayComponents.second)
        } else {
            setSeconds(dayComponents.second)
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

