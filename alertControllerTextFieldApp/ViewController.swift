//
//  ViewController.swift
//  alertControllerTextFieldApp
//
//  Created by student on 2/22/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.numberOfLines = 0
    }

    @IBAction func btnTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Log In", message: "Enter Password", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: {(textField) in
            textField.placeholder = "Password Here"
            textField.isSecureTextEntry = true
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: {action -> Void in
                let savedText = alert.textFields![0] as UITextField
                self.labelResult.text = savedText.text
            })
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        })
    }
}

