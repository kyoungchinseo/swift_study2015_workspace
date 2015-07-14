//
//  ViewController.swift
//  KRWordClock
//
//  Created by Kyoungchin Seo on 2015. 7. 13..
//  Copyright © 2015년 nhnnext. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let gregorian = NSCalendar.currentCalendar()
        let dayComponents = gregorian.components([.Hour, .Minute, .Second], fromDate: NSDate())
        
        print("\(dayComponents)")
        print("\(dayComponents.hour)")
        print("\(dayComponents.minute)")
        print("\(dayComponents.second)")
        
        
        
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

