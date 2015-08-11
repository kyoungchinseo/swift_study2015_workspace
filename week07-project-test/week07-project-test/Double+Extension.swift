//
//  Double+Extension.swift
//  week07-project-test
//
//  Created by Kyoungchin Seo on 2015. 8. 11..
//  Copyright © 2015년 nhnnext. All rights reserved.
//

import Foundation

extension Double {
    var km: Double { return self * 1000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1000.0 }
    var ft: Double { return self / 3.28084 }
}

extension Int {
    subscript(var digitIndex: Int) -> Int {
        var decimalBase = 1
        while digitIndex > 0 {
            decimalBase *= 10
            --digitIndex
        }
        return (self/decimalBase) % 10
    }
    
    mutating func square() {
        self = self * self
    }
    
    enum Kinds {
        case Negative, Zero, Positive
    }
    
    var Kind: Kinds {
        switch self {
        case 0:
            return .Zero
        case let x where x > 0:
            return .Positive
        default:
            return .Negative
        }
    }
    
    
}

