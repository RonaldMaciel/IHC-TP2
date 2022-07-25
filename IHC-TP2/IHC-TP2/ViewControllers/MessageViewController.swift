//
//  MessageViewController.swift
//  IHC-TP2
//
//  Created by Ronald Maciel on 21/07/22.
//

import UIKit

class MessageSenderViewController: UIViewController {
    
    @IBOutlet weak var messaLabel: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let messageReceiverVC: MessageReceiverViewController =  segue.destination as? MessageReceiverViewController {
            messageReceiverVC.message = messaLabel.text
        }
    }
    
    @IBAction func sendButtonTouched(_ sender: Any) {
        performSegue(withIdentifier: "showMessageReceiverVC", sender: nil)
    }
}
