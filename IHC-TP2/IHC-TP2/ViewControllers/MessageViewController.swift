//
//  MessageViewController.swift
//  IHC-TP2
//
//  Created by Ronald Maciel on 21/07/22.
//

import UIKit

class MessageSenderViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    var message: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = message
    }
    
    @IBAction func sendButtonTouched(_ sender: Any) {
        performSegue(withIdentifier: "showMessageReceiver", sender: nil)
    }
}
