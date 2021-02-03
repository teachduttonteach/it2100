//
//  ViewController.swift
//  Chapter03-WorldTrotter
//
//  Created by John Dutton on 1/30/21.
//

import UIKit

class ViewController: UIViewController {

    let gradientLayer: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.colors = [UIColor.red.cgColor,
                            UIColor.yellow.cgColor,
                            UIColor.green.cgColor,
                            UIColor.blue.cgColor]
        return layer
    }()
    //gradientLayer.transform = CATransform3DMakeRotation(CGFloat.pi / 2, 0, 0, 1)


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.addSublayer(gradientLayer)
        gradientLayer.frame = view.bounds
        gradientLayer.zPosition -= 1
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer.frame = view.bounds
    }


}

