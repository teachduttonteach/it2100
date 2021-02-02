//
//  ViewController.swift
//  Lab02a-GameOfLife
//
//  Created by John Dutton on 1/26/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var gameOfLifeCells: UICollectionView

    override func viewDidLoad() {
        super.viewDidLoad()
        gameOfLifeCells.dataSource = []
        // Do any additional setup after loading the view.
    }


}

