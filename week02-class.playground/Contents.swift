//: Playground - noun: a place where people can play

import UIKit

func workLadder(beginWord: String, endWord : String, wordDic : Set<String>) -> ([String]) {
    
    var wordReset: String = beginWord
    var wordCompare: String = ""
    var returnDic = [String]()
    var foundFlag: Bool = false
    var dict = wordDic
    
    for i in beginWord.characters.indices {
        // 0,1,2
        wordCompare = wordReset
        foundFlag = false
        for alphabet in "abcdefghijklmnopqrstuvwxyz".characters {
            wordCompare.removeAtIndex(i)
            wordCompare.insert(alphabet, atIndex: i)
            print(wordCompare)
            print(alphabet)
            
            for word in dict {
                print(word)
                print(wordCompare)
                let bing = (word == wordCompare)
                if (bing) {
                    dict.remove(word)
                    returnDic.append(word)
                    wordReset = word
                    foundFlag = true
                    break;
                }
            }
            if (foundFlag) {
                break;
            }
        }
        if (foundFlag) {
            break;
        }
    }
    
    for i in beginWord.characters.indices {
        // 0,1,2
        wordCompare = wordReset
        foundFlag = false
        for alphabet in "abcdefghijklmnopqrstuvwxyz".characters {
            wordCompare.removeAtIndex(i)
            wordCompare.insert(alphabet, atIndex: i)
            print(wordCompare)
            print(alphabet)
            
            for word in dict {
                print(word)
                print(wordCompare)
                let bing = (word == wordCompare)
                if (bing) {
                    dict.remove(word)
                    returnDic.append(word)
                    wordReset = word
                    foundFlag = true
                    break;
                }
                if (foundFlag) {
                    break;
                }
            }
        }
        if (foundFlag) {
            break;
        }
    }
    
    for i in beginWord.characters.indices {
        // 0,1,2
        wordCompare = wordReset
        foundFlag = false
        for alphabet in "abcdefghijklmnopqrstuvwxyz".characters {
            wordCompare.removeAtIndex(i)
            wordCompare.insert(alphabet, atIndex: i)
            print(wordCompare)
            print(alphabet)
            
            for word in dict {
                print(word)
                print(wordCompare)
                let bing = (word == wordCompare)
                if (bing) {
                    dict.remove(word)
                    returnDic.append(word)
                    wordReset = word
                    foundFlag = true
                    break;
                }
                if (foundFlag) {
                    break;
                }
            }
            if (foundFlag) {
                break;
            }
        }
        if (foundFlag) {
            break;
        }
    }
    
    for i in beginWord.characters.indices {
        // 0,1,2
        wordCompare = wordReset
        foundFlag = false
        for alphabet in "abcdefghijklmnopqrstuvwxyz".characters {
            wordCompare.removeAtIndex(i)
            wordCompare.insert(alphabet, atIndex: i)
            print(wordCompare)
            print(alphabet)
            
            for word in dict {
                print(word)
                print(wordCompare)
                let bing = (word == wordCompare)
                if (bing) {
                    dict.remove(word)
                    returnDic.append(word)
                    wordReset = word
                    foundFlag = true
                    break;
                }
                if (foundFlag) {
                    break;
                }
            }
            if (foundFlag) {
                break;
            }
        }
        if (foundFlag) {
            break;
        }
    }
    
    
    
    return returnDic
}

let dict: Set = ["hot","dot","dog","lot","log"]
let returnValue = workLadder("hit", endWord: "cog", wordDic: dict)

//[“hit” ,”hot" , ”dot” , ”dog” , “cog”]

for word in dict {
    print(word)
}
