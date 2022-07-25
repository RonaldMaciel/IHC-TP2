//
//  LocationViewController.swift
//  IHC-TP2
//
//  Created by Ronald Maciel on 24/07/22.
//

import UIKit
import MapKit

class LocationViewController: UIViewController {
    
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    
    let locationManager: CLLocationManager = CLLocationManager()
    var currentLocation: CLLocation?
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        updateLocation()
    }
    
    private func updateLocation() {
        timer = Timer(fire: Date(), interval: 1/60, repeats: true) { timer in
            if self.locationManager.authorizationStatus == .authorizedWhenInUse,
               let newLocation: CLLocation = self.locationManager.location {
                self.latitudeTextField.text = "\(newLocation.coordinate.latitude)"
                self.longitudeTextField.text = "\(newLocation.coordinate.longitude)"
            }
        }
        
        RunLoop.current.add(timer!, forMode: .default)
    }
}
