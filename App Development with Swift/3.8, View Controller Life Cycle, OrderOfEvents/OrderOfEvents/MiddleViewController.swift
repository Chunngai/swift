//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Sola on 2020/1/30.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {

    // (Label, Outlet: label)
    @IBOutlet var label: UILabel!
    
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let existingText = label.text {
            label.text = "\(existingText)\nEvent number \(eventNumber) was viewDidload_2"
            eventNumber += 1
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let existingText = label.text {
            label.text = "\(existingText)\nEvent number \(eventNumber) was viewWillAppear_2"
            eventNumber += 1
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let existingText = label.text {
            label.text = "\(existingText)\nEvent number \(eventNumber) was viewDidappear_2"
            eventNumber += 1
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let existingText = label.text {
            label.text = "\(existingText)\nEvent number \(eventNumber) was viewWillDisappear_2"
            eventNumber += 1
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if let existingText = label.text {
            label.text = "\(existingText)\nEvent number \(eventNumber) was viewDidDisappear_2"
            eventNumber += 1
        }
    }
}
