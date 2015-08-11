//
//  Blackjack.swift
//  week07-project-test
//
//  Created by Kyoungchin Seo on 2015. 8. 11..
//  Copyright © 2015년 nhnnext. All rights reserved.
//

import Foundation


struct BlackjackCard {
    enum Suit: Character {
        case Spades = "\u{2660}", Hearts = "\u{2665}",
        Diamonds = "\u{2666}", Clubs = "\u{2663}"
    }
    
    enum Rank: Int {
        case Two = 2, Three, Four, Five, Six, Seven, Eight,
        Nine, Ten
        case Jack, Queen, King, Ace
        struct Values {
            let first: Int, second: Int?
        }
        
        var values: Values {
            switch self {
            case .Ace:
                return Values(first: 1, second: 11)
            case .Jack, .Queen, .King:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.rawValue, second: nil)
            }
        }
    }
    
    let rank: Rank, suit:Suit
    var description: String {
        var output = "suit is \(suit.rawValue),"
        output += " value is \(rank.values.first)"
        if let second = rank.values.second {
            output += " or \(second)"
        }
        return output
    }
    
}
