//: Playground - noun: a place where people can play

import UIKit


class Stock {
    var code: String?
    var price: Double?
    var share: Double?
    init(code: String, price: Double, share: Double)
    {
        self.code = code
        self.price = price
        self.share = share
    }
}

class testStock {
    
    let stockList = [Stock(code:"Google", price: 48, share: 5),
        Stock(code: "Apple", price: 500, share: 10),
        Stock(code: "Naver", price: 78, share: 33)];
    
    func findStockByCode(code: String) -> Stock?
    {
        for stockItem in stockList {
            if let itemCode = stockItem.code {
                if itemCode == code {
                    return stockItem
                }
            }
        }
        return nil
    }

    func findStockSharedByCode(code: String) -> Double?
    {
        guard let price = findStockByCode(code)?.price else {
            print("impossible to load price")
            return nil
        }
        guard let share = findStockByCode(code)?.share else {
            print("impossible to load share")
            return nil
        }
        return price * share
    }
}

let stockTest = testStock()

stockTest.findStockByCode("Apple")?.code

stockTest.findStockSharedByCode("Apple")

stockTest.findStockSharedByCode("Google")

stockTest.findStockByCode("Naver")?.price

stockTest.findStockSharedByCode("Hello")






