//
//  ViewController.swift
//  AppEventCount
//
//  Created by AnhDT on 11/21/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    
    @IBOutlet weak var willTerminateLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willEnterForeGroundLabel: UILabel!
    @IBOutlet weak var didEnterBackGroundLabel: UILabel!
    var launchcount = 0 {
        didSet {
            print("launtcount: \(self.launchcount)")
        }
    }
    var resignActiveCount = 0
    var enterBackGroundCount = 0
    var terminateCount = 0
    var becomeActiveCount = 0
    var enterForeGroundCount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }
    func updateView() {
        didFinishLaunchingLabel.text = "The app has launched \(launchcount) time(s)"
        willResignActiveLabel.text = "The app has resign \(resignActiveCount) time(s)"
        willTerminateLabel.text = "The app has termnate \(terminateCount) time(s)"
        didBecomeActiveLabel.text = "The app has became active \(becomeActiveCount) time(s)"
        willEnterForeGroundLabel.text = "The app has entered foreground \(enterForeGroundCount) time(s)"
        didEnterBackGroundLabel.text = "The app has entered background \(enterBackGroundCount) time(s)"
    }

}

