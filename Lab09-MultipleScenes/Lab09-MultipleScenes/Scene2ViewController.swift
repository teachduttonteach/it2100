//
//  Scene2ViewController.swift
//  Lab09-MultipleScenes
//
//  Created by John Dutton on 3/20/21.
//

import UIKit

class Scene2ViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    
    @IBOutlet var unwindScene1: UIButton!
    var name: String!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        welcomeLabel.text = name
    }
    
    @IBAction func backToScene1Tapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindToScene1", sender: self)
    }
    
    //var welcomeLabelText: String!
    
    
    
}
