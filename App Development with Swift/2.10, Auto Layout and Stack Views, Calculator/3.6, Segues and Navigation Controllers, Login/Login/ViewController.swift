//
//  ViewController.swift
//  Login
//
//  Created by Sola on 2020/1/30.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // (Text Field, Outlet, userName)
    @IBOutlet var userName: UITextField!
    
    // (Button, Outlet, forgotUserNameButton)
    @IBOutlet var forgotUserNameButton: UIButton!
    
    // (Button, Outlet, forgotPasswordButton)
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {
            print(0)
            return
        }
        
        if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot User Name"
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgor Password"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
    }
    
    // (Button, Action: forgotUserNameButtonTapped)
    @IBAction func forgotUserNameButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "forgotInfo", sender: forgotUserNameButton)
    }
    
    // (Button, Action: forgotPasswordButtonTapped)
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "forgotInfo", sender: forgotPasswordButton)
    }
}

