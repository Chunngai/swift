//
//  AppDelegate.swift
//  AppEventCount
//
//  Created by Sola on 2020/1/31.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
//    var viewController: ViewController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        viewController = window?.rootViewController as? ViewController
//
//        viewController?.didFinishLaunchingCount += 1
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
//        viewController?.willResignActiveCount += 1
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
//        viewController?.didEnterBackgroundCount += 1
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
//        viewController?.willEnterForegroundCount += 1
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
//        viewController?.didBecomeActiveCount += 1
        
//        viewController?.updateView()
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
//        viewController?.willTerminateCount += 1
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

