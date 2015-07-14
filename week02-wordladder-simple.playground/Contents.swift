//: Playground - noun: a place where people can play

import UIKit

func workLadder(beginWord: String, endWord : String, wordDic : Set<String>) -> ([String]) {
    
    var wordReset: String = beginWord
    var wordCompare: String = ""
    var returnDic = [String]()
    var foundFlag: Bool = false
    var transformComplete: Bool = false;
    var dict = wordDic
    
    returnDic.append(beginWord)
    
    // make chars_search
    var chars_search:[Character]=[]
    for word in dict {
        for character in word.characters {
            if (!chars_search.contains(character)) {
                chars_search.append(character)
            }
        }
    }
    
    func search() {
        foundFlag = false
        for i in beginWord.characters.indices {
            wordCompare = wordReset
            wordCompare.removeAtIndex(i)
            wordCompare.insert(endWord[i], atIndex: i)
            print(wordCompare)
            if (endWord == wordCompare) && (foundFlag == false) {
                returnDic.append(endWord)
                transformComplete = true
                foundFlag = true
                return
            }
        }
        
        // seach in character dictionary
        for i in beginWord.characters.indices {
            for achar in chars_search {
                wordCompare = wordReset
                wordCompare.removeAtIndex(i)
                wordCompare.insert(achar, atIndex: i)
                print(wordCompare)
                for word in dict {
                    if (word == wordCompare) && (foundFlag == false) {                        dict.remove(word)
                        returnDic.append(word)
                        wordReset = word
                        foundFlag = true
                        return
                    }
                }
            }
        }
    }
    
    transformComplete = false;
    while(transformComplete == false) {
        search()
    }
    
    return returnDic
}

let dict: Set = ["hot","dot","dog","lot","log"]
let returnValue = workLadder("hit", endWord: "cog", wordDic: dict)

//[“hit” ,”hot" , ”dot” , ”dog” , “cog”]

for word in dict {
    print(word)
}




