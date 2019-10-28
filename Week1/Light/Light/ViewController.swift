//
//  ViewController.swift
//  Light
//
//  Created by apple on 8/2/1398 AP.
//  Copyright © 1398 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
    
    //@IBOutlet weak var lightButton: UIButton!
    @IBAction func buttonPressed(_ sender: Any) {
    lightOn = !lightOn
        updateUI()
    }
    func updateUI(){
        view.backgroundColor = lightOn ? .white : .black
        /*if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        }else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }*/
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }


}

