//
//  SongsStore.swift
//  Lab08-TableView
//
//  Created by John Dutton on 3/10/21.
//

import UIKit

class SongsStore {
    var allSongs = [Song]()
    
    init() {
        allSongs.append(Song(name: "People In the Middle", duration: 301, artist: "Spearhead"))
        allSongs.append(Song(name: "Everything is Everything", duration: 215, artist: "Lauryn Hill"))
        allSongs.append(Song(name: "Lagoon Jingle", duration: 123, artist: "House Jacks"))
    }
}

