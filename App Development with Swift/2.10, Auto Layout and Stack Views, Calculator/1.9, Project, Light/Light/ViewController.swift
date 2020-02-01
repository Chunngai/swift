//
//  ViewController.swift
//  Light
//
//  Created by Sola on 2020/1/28.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // The light is on when the screen starts off
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Updates the text of the button when the screen starts off
        updateUI()
    }

    // (Button, Outlet: lightButton)
    // @IBOutlet var lightButton: UIButton!
    
    // (Button, Action: buttonPressed)
    @IBAction func buttonPressed(_ sender: Any) {
        // Implements the ! operation every time the button is presses
        lightOn.toggle()
        // Changes the background color of the screen
        updateUI()
    }
    
    // The functions is responsible for changing background color of
    // the view
    func updateUI() {
//        if lightOn {
//            view.backgroundColor = .white  // The var "view" here representes the view of the view controller
//            // lightButton.setTitle("Off", for: .normal)
//        } else {
//            view.backgroundColor = .black
//            // lightButton.setTitle("On", for: .normal)
//        }
        view.backgroundColor = lightOn ? .white : .black
    }
}

