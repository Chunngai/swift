//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Sola on 2020/1/28.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    
    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text = "This app rocks!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

