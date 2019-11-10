//
//  ViewController.swift
//  LifeCycle
//
//  Created by AnhDT on 11/10/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad")
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        print("ViewWillAppear")
    }


}

