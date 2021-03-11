//
//  SongViewController.swift
//  Lab08-TableView
//
//  Created by John Dutton on 3/10/21.
//

import UIKit

class SongViewController: UITableViewController {
    var songsStore: SongsStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Got to viewdidload")
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 65
        
    }
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songsStore.allSongs.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell", for: indexPath) as! SongCell
        let song = songsStore.allSongs[indexPath.row]
        
        //cell.textLabel?.text = song.name
        //cell.detailTextLabel?.text = song.artist
        
        cell.songNameLabel?.text = song.name
        cell.songArtistLabel?.text = song.artist
        cell.durationLabel?.text = "\(song.duration) secs"
        
        return cell
    }
 
 

}

