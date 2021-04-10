//
//  ViewController.swift
//  Lab12-ButtonApp
//
//  Created by John Dutton on 4/10/21.
//

import UIKit

class ViewController: UIViewController {

    private let tellMeSomethingButton: UIButton = {
        let button = UIButton(frame:  CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemTeal
        button.setTitle("Tell Me Something", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(tellMeSomethingButton)
        tellMeSomethingButton.center = view.center
        tellMeSomethingButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton() {
        let vc = SecondViewController()
        vc.modalPresentationStyle = .formSheet
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }


}

class SecondViewController: UIViewController {
    private let tellMeSomethingLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        label.text = "Hey you, I'm telling you something!"
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        view.addSubview(tellMeSomethingLabel)
        tellMeSomethingLabel.center = view.center
    }
}
