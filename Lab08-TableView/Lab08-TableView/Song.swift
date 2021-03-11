//
//  Song.swift
//  Lab08-TableView
//
//  Created by John Dutton on 3/10/21.
//

import UIKit

class Song {
    var name: String
    var artist: String
    var duration: Int
    
    init(name: String, duration: Int, artist: String) {
        self.name = name
        self.artist = artist
        self.duration = duration
    }
}

