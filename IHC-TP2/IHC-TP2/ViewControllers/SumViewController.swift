//
//  ViewController.swift
//  IHC-TP2
//
//  Created by Ronald Maciel on 21/07/22.
//

import UIKit

class SumViewController: UIViewController {
    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNumberTextField.delegate = self
        secondNumberTextField.delegate = self
    }
    
    @IBAction func sumButtonTouched(_ sender: Any) {
        let sum = (Double(firstNumberTextField.text ?? "") ?? 0) + (Double(secondNumberTextField.text ?? "") ?? 0)
        
        resultLabel.text = "RESULT: \(sum)"
    }
    
    @IBAction func showNextActivity(_ sender: Any) {
        performSegue(withIdentifier: "goToActivity2", sender: nil)
    }
}

extension SumViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
}
