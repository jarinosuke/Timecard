//
//  AppDelegate.swift
//  Timecard
//
//  Created by Naoki Ishikawa on 12/23/14.
//  Copyright (c) 2014 Naoki Ishikawa. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var punchViewController: PunchViewController?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        punchViewController = PunchViewController.punchViewController() as? PunchViewController
        window?.rootViewController = punchViewController
        window?.makeKeyAndVisible()
        
        return true
    }
}

