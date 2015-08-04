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

let library = [
    Movie(name: "casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "Never gonna give you up", artist: "Rick Astley")
]

if library is [MediaItem] {
    print("library is a MediaItem class")
}

for item in library {
    if item is Movie {
        print("it's a movie!")
    } else if item is Song {
        print("it's a song!")
    }
}

// downcating
for item in library {
    if let movie = item as? Movie {
        print("\(movie.name), \(movie.director)")
    } else if let song = item as? Song {
        print("\(song.name), \(song.artist)")
    }
}

// AnyObject
let someObjects: [AnyObject] = [
    Movie(name: "2001: A Space Odyssey", director: "Stanley Kubrick"),
    Movie(name: "Moon", director: "Duncan Jones"),
    Movie(name: "Alien", director: "Ridley Scott")
]

for movie in someObjects as! [Movie] {
    print("\(movie.name), \(movie.director)")
}









