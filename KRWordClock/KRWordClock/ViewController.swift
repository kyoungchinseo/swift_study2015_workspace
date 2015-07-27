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
    
    
    
    var timer = NSTimer()
    
    
    func counting() {
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

