//
//  AddressViewController.swift
//  Lab10-NavigationController
//
//  Created by John Dutton on 3/28/21.
//

import UIKit

class AddressViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var firstNameText: UITextField!
    @IBOutlet var middleNameText: UITextField!
    @IBOutlet var lastNameText: UITextField!
    @IBOutlet var addressLine1Text: UITextField!
    @IBOutlet var addressLine2Text: UITextField!
    @IBOutlet var cityText: UITextField!
    @IBOutlet var stateText: UITextField!
    @IBOutlet var zipText: UITextField!
    
    @IBOutlet var previewLabel: UILabel!

    var thisAddress: Address = Address()
    
    required init?(coder aCoder: NSCoder) {
        super.init(coder: aCoder)
    }
    
    //override func

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        updateAddress()
        textField.resignFirstResponder()
        
        return true
    }
    
    func updateAddress() {
        thisAddress.firstName = firstNameText.text!
        thisAddress.middleName = middleNameText.text!
        thisAddress.lastName = lastNameText.text!
        thisAddress.addressLine1 = addressLine1Text.text!
        thisAddress.addressLine2 = addressLine2Text.text!
        thisAddress.city = cityText.text!
        thisAddress.state = stateText.text!
        thisAddress.ZIP = zipText.text!
        
        previewLabel.text = thisAddress.getFullAddress()
    

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        updateAddress()
        if segue.identifier == "segueShowNavigation" {
            //segue.destination as ShowAddressController
            
            if let destVC = segue.destination as? ShowAddressController {
                destVC.thisAddress = thisAddress
            }
        }
    }}
