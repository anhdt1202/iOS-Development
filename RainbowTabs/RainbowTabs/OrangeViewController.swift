//
//  OrangeViewController.swift
//  RainbowTabs
//
//  Created by AnhDT on 11/8/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBOutlet weak var labelOragepage: UILabel!
    
    @IBAction func pressedButtonInOrange(_ sender: Any) {
    }
    
    @IBAction func clickButton(_ sender: Any) {
        labelOragepage.isHidden = !labelOragepage.isHidden
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
        labelOragepage.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
