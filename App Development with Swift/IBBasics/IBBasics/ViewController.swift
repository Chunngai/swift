//
//  ViewController.swift
//  IBBasics
//
//  Created by Sola on 2020/1/28.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // (Button, Outlet: myButton) Connects the button with the storyboard as an outlet
    @IBOutlet var myButton: UIButton!
    
    // (Button, Action: buttonPressed) Prints a message to the console when the button is tapped
    @IBAction func buttonPressed(_ sender: Any) {
        print("The button is pressed")
    }
    
    // (Scroll view, Outlet: scroolView) Connects the scroll view with the storyboard as an outlet
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // (Button, Outlet: myButton) Changes the color of the button from blue to red
        myButton.setTitleColor(.red, for: .normal)
        
        // (ScrollView, Outlet: scrollView) Changes the content size of the scroll view
        scrollView.contentSize = CGSize(width: 100.0, height: 100.0)
        
        // (Label, Outlet: label) Adds a label to the view with code
        let label = UILabel(frame: CGRect(x: 16, y: 16, width: 200, height: 44))
        label.text = "label"
        view.addSubview(label)
    }


}

