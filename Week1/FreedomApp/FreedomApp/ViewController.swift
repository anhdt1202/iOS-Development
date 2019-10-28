//
//  ViewController.swift
//  FreedomApp
//
//  Created by apple on 8/3/1398 AP.
//  Copyright © 1398 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var lightOn = true

    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var buttonPressed: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonPressed.addTarget(self, action: #selector(clickEvent(_:)), for: [.touchUpInside])
            updateUI()
        }
        func updateUI(){
            view.backgroundColor = .black
            backGround.isHidden = !lightOn
        // Do any additional setup after loading the view.
    }
    
    @objc func clickEvent(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    

}

