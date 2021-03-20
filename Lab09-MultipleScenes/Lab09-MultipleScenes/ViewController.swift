//
//  ViewController.swift
//  Lab09-MultipleScenes
//
//  Created by John Dutton on 3/20/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var welcomeField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "showItem":
            if let text = welcomeField.text {
                let detailViewController = segue.destination as! Scene2ViewController
                detailViewController.name = "Hello, " + text
            }
        default:
            preconditionFailure("Unexpected segue identifier.")
        }
    }
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
    }
}

