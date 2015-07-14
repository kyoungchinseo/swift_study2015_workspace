//: Playground - noun: a place where people can play

import UIKit


func numOfItemsInSection(section : Int, loadButtonState : Bool, isPad:Bool, itemCount : Int) -> Int
{
    let scase = (section, loadButtonState, isPad)
    
    switch scase
    {
    case (0,true,_):
        return itemCount
    case (0,false,false):
        return 4
    case (0,false,true):
        return 8
    case (1,true,_):
        return 0
    case(1,false,_):
        return 1
    default:
        return 0
    }
}

numOfItemsInSection(0, loadButtonState: true, isPad: false, itemCount: 13)
numOfItemsInSection(0, loadButtonState: true, isPad: true, itemCount: 12)
numOfItemsInSection(0, loadButtonState: false, isPad: true, itemCount: 13)
numOfItemsInSection(0, loadButtonState: false, isPad: false, itemCount: 13)
numOfItemsInSection(1, loadButtonState: true, isPad: false, itemCount: 13)
numOfItemsInSection(1, loadButtonState: false, isPad: true, itemCount: 13)


