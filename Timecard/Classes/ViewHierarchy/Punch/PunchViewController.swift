//
//  PunchViewController.swift
//  Timecard
//
//  Created by Naoki Ishikawa on 12/23/14.
//  Copyright (c) 2014 Naoki Ishikawa. All rights reserved.
//

import UIKit

class PunchViewController: ViewController {
    //TODO: want to return as instancetype as ObjC
    class func punchViewController() -> AnyObject {
        //TODO:How do I get the class name string without project namespace in Swift? like NSStringFromClass([self class]) in Objective-C
        let storyboard = UIStoryboard(name: "PunchViewController", bundle: NSBundle.mainBundle())
        let punchViewController: AnyObject = storyboard.instantiateInitialViewController()
        return punchViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let settingButtonItem: UIBarButtonItem = UIBarButtonItem(title: "Setting", style: .Plain, target: self, action: "settingButtonTapped:")
        self.navigationItem.leftBarButtonItem = settingButtonItem
        
        let attendanceButtonItem: UIBarButtonItem = UIBarButtonItem(title: "Attendance", style: .Plain, target: self, action: "attendanceButtonTapped:")
        self.navigationItem.rightBarButtonItem = attendanceButtonItem
    }
    
    //MARK: Button Action
    
    func settingButtonTapped(sender: AnyObject) {
        let settingsViewController = SettingsViewController.settingssViewController() as SettingsViewController
        self.navigationController?.pushViewController(settingsViewController, animated: true)
    }
    
    func attendanceButtonTapped(sender: AnyObject) {
        let attendancesViewController = AttendancesViewController.attendancesViewController() as AttendancesViewController
        self.navigationController?.pushViewController(attendancesViewController, animated: true)
    }
}
