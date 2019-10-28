//
//  ViewController.swift
//  FirstTimeDebugging
//
//  Created by apple on 8/2/1398 AP.
//  Copyright © 1398 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    var name = ["Tuan", "Anh", "Dang"] //start point to debug
        name.removeFirst()
        name.removeFirst()
        name.removeFirst()
        name.removeFirst()
     //line 4 is breakpoint.
     //fĩ this by delete line of code
    }


}

