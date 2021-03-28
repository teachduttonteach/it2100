//
//  Address.swift
//  Lab10-NavigationController
//
//  Created by John Dutton on 3/28/21.
//

import UIKit

class Address {
    var firstName: String = ""
    var lastName: String = ""
    var middleName: String = ""
    var addressLine1: String = ""
    var addressLine2: String = ""
    var city: String = ""
    var state: String = ""
    var ZIP: String = ""
    
    init() {
        
    }
    
    func getFullAddress() -> String {
        return "\(self.firstName) \(self.middleName) \(self.lastName)\n\(self.addressLine1)\n\(self.addressLine2)\n\(self.city), \(self.state) \(self.ZIP)"

    }
}
