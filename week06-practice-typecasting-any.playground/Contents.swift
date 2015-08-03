//: Playground - noun: a place where people can play

import UIKit

class MediaItem {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

var things = [Any]()

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.141592)
things.append("Hello")
things.append((3.0, 5.0))

things.append(Movie(name: "Ghostbusters", director: "IvanReitman"))
things.append({(name: String)-> String in "Hello, \(name)"})

for thing in things {
    switch thing {
    case 0 as Int:
        print("as an Int")
    case 0 as Double:
        print("as a Double")
    case let someInt as Int:
        print("\(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("positive double \(someDouble)")
    case is Double:
        print("double value")
    case let someString as String:
        print("string: \(someString)")
    case let (x,y) as (Double, Double):
        print("point is \(x), \(y)")
    case let movie as Movie:
        print("\(movie.name), \(movie.director)")
    case let stringConv as String -> String:
        print(stringConv("Michael"))
    default:
        print("Something else")
    }
    
}