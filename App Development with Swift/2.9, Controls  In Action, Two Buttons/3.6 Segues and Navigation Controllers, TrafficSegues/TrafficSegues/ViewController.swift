//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Sola on 2020/1/30.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // (Text Field, Outlet: textField)
    @IBOutlet var textField: UITextField!
    
    // (Switch, Outlet: segueSwitch)
    @IBOutlet var segueSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
//
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title = textField.text
//    }
    
    // (Button, Action: yellowButtonTapped)
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    // (Button, Action: greenButtonTapped)
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
}

