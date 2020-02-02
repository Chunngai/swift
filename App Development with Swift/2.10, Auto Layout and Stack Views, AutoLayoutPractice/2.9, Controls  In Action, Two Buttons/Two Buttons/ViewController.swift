//
//  ViewController.swift
//  Two Buttons
//
//  Created by Sola on 2020/1/29.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        if let text = textField.text {
            label.text = text
        }
    }
    
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        textField.text = ""
        label.text = ""
    }
}

