//
//  ViewController.swift
//  Lab01-AJoke
//
//  Created by John Dutton on 1/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var jokeLabel: UILabel!
    @IBOutlet var punchlineLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showJoke(_ sender:UIButton) {
        jokeLabel.text = "How does a boat laugh?"
    }
    
    @IBAction func showPunchLine(_ sender: UIButton) {
        punchlineLabel.text = "Yacht, yacht, yacht."
    }

}

