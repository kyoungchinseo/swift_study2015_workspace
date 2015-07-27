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
    @IBOutlet var hourPost: NSTextFieldCell!
    
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
    @IBOutlet var minuteNine: NSTextFieldCell!
    
    @IBOutlet var minutePost: NSTextField!
    
    @IBOutlet var second: NSTextField!
    
    @IBOutlet var times: [NSTextField]!
    
    
    var timer = NSTimer()
    
    func clear_color() {
        
        
        
    }
    
    
    func counting() {
        clear_color()
        
        let gregorian = NSCalendar.currentCalendar()
        let dayComponents = gregorian.components([.Hour, .Minute, .Second], fromDate: NSDate())
        
        print("\(dayComponents)")
       // print("\(dayComponents.hour)")
       // print("\(dayComponents.minute)")
       // print("\(dayComponents.second)")
        
        let color = NSColor.redColor()
        
        print("\(dayComponents.hour/12)")
        
        if (dayComponents.hour / 12 == 1) {
            hourPreAmPmPre.textColor = color
            hourPrePmPost.textColor = color
        } else {
            hourPreAmPmPre.textColor = color
            hourPreAmPost.textColor = color
        }
        
        print("\(dayComponents.hour%12)")
        
        if (dayComponents.hour % 12 == 0) {
            if (dayComponents.hour / 12 == 1) {
                // 정오
                midnightPostMoonPre.textColor = color
                minuteFiveNoonPost.textColor = color
            } else {
                // 자정
                midnightPre.textColor = color
                midnightPostMoonPre.textColor = color
            }
            
        } else {
            switch (dayComponents.hour % 12) {
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
        
        
        // minutes
        //
        print("\(dayComponents.minute%10)")
        print("\(dayComponents.minute/10)")
        
        switch (dayComponents.minute/10) {
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
            minuteTen.textColor = color //
        }
        minuteTen.textColor = color
        
        switch (dayComponents.minute%10) {
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
        minutePost.textColor = color
        
        
        // seconds
        print("\(dayComponents.second%10)")
        print("\(dayComponents.second/10)")
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("counting"), userInfo: nil, repeats: true)
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

