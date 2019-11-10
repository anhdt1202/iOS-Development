//
//  ViewController.swift
//  TrafficSegues
//
//  Created by AnhDT on 11/6/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue){
               
    }
    @IBOutlet weak var textField: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
}


