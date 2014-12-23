//
//  SettingsViewController.swift
//  Timecard
//
//  Created by Naoki Ishikawa on 12/23/14.
//  Copyright (c) 2014 Naoki Ishikawa. All rights reserved.
//

import UIKit

class SettingsViewController: ViewController {
    //TODO: want to return as instancetype as ObjC
    class func settingssViewController() -> AnyObject {
        //TODO:How do I get the class name string without project namespace in Swift? like NSStringFromClass([self class]) in Objective-C
        let storyboard = UIStoryboard(name: "SettingsViewController", bundle: NSBundle.mainBundle())
        let settingssViewController: AnyObject = storyboard.instantiateInitialViewController()
        return settingssViewController
    }
}
