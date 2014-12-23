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
}
