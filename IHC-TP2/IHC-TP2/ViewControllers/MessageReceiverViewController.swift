//
//  MessageReceiverViewController.swift
//  IHC-TP2
//
//  Created by Ronald Maciel on 24/07/22.
//

import UIKit

class MessageReceiverViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    var message: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = message
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        performSegue(withIdentifier: "showAccelerometerVC", sender: nil)
    }
}
