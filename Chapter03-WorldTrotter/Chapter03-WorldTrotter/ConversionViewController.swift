//
//  ViewController.swift
//  Chapter03-WorldTrotter
//
//  Created by John Dutton on 1/30/21.
//

import UIKit

class ConversionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Yo it worked for ConversionViewController")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = UIColor.init(red: CGFloat.random(in: 0..<1), green: CGFloat.random(in: 0..<1), blue: CGFloat.random(in: 0..<1), alpha: CGFloat.random(in: 0..<1))
    }


}

