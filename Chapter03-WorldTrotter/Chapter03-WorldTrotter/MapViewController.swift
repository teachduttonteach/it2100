//
//  MapViewController.swift
//  Lab03-WorldTrotter
//
//  Created by John Dutton on 2/5/21.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Yo MapViewController worked")
    }
    
    var mapView: MKMapView!
    var pointsOfInterestLabel: UILabel!
    var pointsOfInterestSwitch: UISwitch!
    
    override func loadView() {
        mapView = MKMapView()
        
        view = mapView
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.systemBlue
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        let margins = view.layoutMarginsGuide
        segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        pointsOfInterestLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        pointsOfInterestLabel.text = "Points of Interest"
        pointsOfInterestLabel.textAlignment = .center
        view.addSubview(pointsOfInterestLabel)
        pointsOfInterestLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8).isActive = true


        /*
        pointsOfInterestSwitch = UISwitch(frame: CGRect())
        pointsOfInterestSwitch.center = CGPoint(x: 160, y: 300)
        view.addSubview(pointsOfInterestSwitch)
        */
        
    }
    
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
    
}
