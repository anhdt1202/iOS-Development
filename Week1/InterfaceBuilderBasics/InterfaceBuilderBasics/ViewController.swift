//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by apple on 8/2/1398 AP.
//  Copyright © 1398 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBAction func mainButton(_ sender: Any) {
        mainLabel.isHidden = !mainLabel.isHidden
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "Ty say goodbye Chu"
        // Do any additional setup after loading the view.
    }


}

