//
//  ShowAddressController.swift
//  Lab10-NavigationController
//
//  Created by John Dutton on 3/28/21.
//

import UIKit

class ShowAddressController: UIViewController {
    @IBOutlet var addressLabel: UILabel!
    
    var thisAddress: Address!
    
    required init?(coder aCoder: NSCoder) {
        super.init(coder: aCoder)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        addressLabel.text = thisAddress.getFullAddress()
    }
}
