//
//  AccelerometerResultsViewController.swift
//  IHC-TP2
//
//  Created by Ronald Maciel on 24/07/22.
//

import UIKit

class AccelerometerResultViewController: UIViewController {
    @IBAction func nextButtonTouched(_ sender: Any) {
        performSegue(withIdentifier: "showLuminosityVC", sender: nil)
    }
}
