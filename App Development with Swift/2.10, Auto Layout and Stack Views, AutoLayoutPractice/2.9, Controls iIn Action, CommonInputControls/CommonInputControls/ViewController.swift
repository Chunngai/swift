//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Sola on 2020/1/29.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // (Button, Outlet: button)
    @IBOutlet var button: UIButton!
    
    // (Switch, Outlet: toggle)
    @IBOutlet var toggle: UISwitch!
    
    // (Slider, Outlet: slider)
    @IBOutlet var slider: UISlider!
    
    // Outlets are always put above viewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Connects the button to buttonTapped()
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        // Creates a button totally with code
//        let button_ = UIButton(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
//        button_.setTitle("button", for: .normal)
//        button_.setTitleColor(.black, for: .normal)
//        button_.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
//        view.addSubview(button_)
    }
    
    // Actions are always put below viewDidLoad()

    // (Button: Action: buttonTapped)
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped!")
        
        if toggle.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off!")
        }
        
        print("The slider is set to \(slider.value	)")
    }
    
    // (Switch: Action: switchToggled)
    @IBAction func switchToggled(_ sender: UISwitch) {
        // sender.isOn records if a switch is on or off
        if sender.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off!")
        }
    }
    
    // (Slider, Action: sliderValueChanged)
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        // sender.value stores the value of the slide
        print(sender.value)
    }
    
    // (Text Field, Action: keyboardReturnKeyTapped)
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        // sender.text stores the input
        if let text = sender.text {
            print(text)
        }
    }
    
    // (Text Field, Action: textChanged)
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    // (Tap Gesture Recognizer)
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        // sender.location stores the location of the tap gesture in a certain view
        let location = sender.location(in: view)
        print(location)
    }
}

