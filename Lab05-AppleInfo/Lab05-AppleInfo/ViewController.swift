//
//  ViewController.swift
//  Lab05-AppleInfo
//
//  Created by John Dutton on 2/20/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    enum AppleURLS: String {
        case apple = "https://en.wikipedia.org/wiki/Apple_Inc"
        case ios = "https://en.wikipedia.org/wiki/IOS"
        case xcode = "https://en.wikipedia.org/wiki/Xcode"
        case swift = "https://en.wikipedia.org/wiki/Swift_(programming_language)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayUrl(url: AppleURLS.apple)
    }
    
    @IBOutlet var appleLink: UISegmentedControl!
    @IBOutlet var webView: WKWebView!
    
    @IBAction func changeAppleLink(_ sender: Any) {
        switch (appleLink.titleForSegment(at: appleLink.selectedSegmentIndex)) {
        case "Apple":
            displayUrl(url: AppleURLS.apple)
        case "iOS":
            displayUrl(url: AppleURLS.ios)
        case "Xcode":
            displayUrl(url: AppleURLS.xcode)
        case "Swift":
            displayUrl(url: AppleURLS.swift)
        default:
            break
        }
    }
    
    func displayUrl(url: AppleURLS) {
        let myURL = URL(string: url.rawValue)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

