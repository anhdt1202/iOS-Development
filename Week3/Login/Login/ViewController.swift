//
//  ViewController.swift
//  Login
//
//  Created by AnhDT on 11/7/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotPassButton: UIButton!
    @IBOutlet weak var forgotUserButton: UIButton!
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: forgotPassButton)
        
    }
    @IBAction func forgotUserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: forgotUserButton)
    }
    @IBOutlet weak var textFieldsUserName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textFieldsUserName.text
        guard  let sender = sender as? UIButton else {return}
        
        if sender == forgotPassButton {
            segue.destination.navigationItem.title = "Forgot Password"
        }else if sender == forgotUserButton {
            segue.destination.navigationItem.title = "Forgot Username"
        }else {
            segue.destination.navigationItem.title = textFieldsUserName.text
        }
    }

}

