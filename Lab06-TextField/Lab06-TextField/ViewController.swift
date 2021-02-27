//
//  ViewController.swift
//  Lab06-TextField
//
//  Created by John Dutton on 2/27/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var allSetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.returnKeyType = .done
        textField.autocapitalizationType = .words
        textField.autocorrectionType = .no
        textField.becomeFirstResponder()
        textField.delegate = self
    }
    
    @IBAction func buttonTapped() {
        textField.resignFirstResponder()
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        if let text = textField.text {
            print("\(text)")
        }
        return true
    }
}
