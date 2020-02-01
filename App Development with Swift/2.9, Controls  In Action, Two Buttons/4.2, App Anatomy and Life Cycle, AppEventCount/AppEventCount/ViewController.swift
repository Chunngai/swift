//
//  ViewController.swift
//  AppEventCount
//
//  Created by Sola on 2020/1/31.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // (Label, Outlet: didFinishLaunchingLabel)
    @IBOutlet var didFinishLaunchingLabel: UILabel!
    var didFinishLaunchingCount = 0
    
    // (Label, Outlet: willResignActiveLabel)
    @IBOutlet var willResignActiveLabel: UILabel!
    var willResignActiveCount = 0
    
    // (Label, Outlet: didEnterBackgroundLabel)
    @IBOutlet var didEnterBackgroundLabel: UILabel!
    var didEnterBackgroundCount = 0
    
    // (Label, Outlet: willEnterForegroundLabel)
    @IBOutlet var willEnterForegroundLabel: UILabel!
    var willEnterForegroundCount = 0
    
    // (Label, Outlet: didBecomeActiveLabel)
    @IBOutlet var didBecomeActiveLabel: UILabel!
    var didBecomeActiveCount = 0
    
    // (Label, Outlet: willTerminateLabel)
    @IBOutlet var willTerminateLabel: UILabel!
    var willTerminateCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }

    func updateView() {
        didFinishLaunchingLabel.text = "didFinishLaunching \(didFinishLaunchingCount)"
        willResignActiveLabel.text = "willResignActive \(willResignActiveCount)"
        didEnterBackgroundLabel.text = "didEnterBackground \(didEnterBackgroundCount)"
        willEnterForegroundLabel.text = "willEnterForeground \(willEnterForegroundCount)"
        didBecomeActiveLabel.text = "didBecomeActive \(didBecomeActiveCount)"
        willTerminateLabel.text = "willTerminate \(willTerminateCount)"
    }
}

