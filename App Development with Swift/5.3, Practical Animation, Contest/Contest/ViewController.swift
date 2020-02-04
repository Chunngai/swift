//
//  ViewController.swift
//  Contest
//
//  Created by Sola on 2020/2/4.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        
        if emailTextField.text!.isEmpty {
            UIView.animate(withDuration: 0.1, animations: {
                let rightTranslation = CGAffineTransform(translationX: 15.0, y: 0.0)
                self.emailTextField.transform = rightTranslation
            }) { (_) in
                UIView.animate(withDuration: 0.1, animations: {
                    let leftTranslation = CGAffineTransform(translationX: -15.0, y: 0.0)
                    self.emailTextField.transform = leftTranslation
                }) { (_) in
                    self.emailTextField.transform = CGAffineTransform.identity
                }
            }
        } else {
            performSegue(withIdentifier: "SubmitIdentifier", sender: sender)
        }
    }
}

