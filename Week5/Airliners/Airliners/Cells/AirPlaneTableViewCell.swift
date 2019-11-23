//
//  AirPlaneTableViewCell.swift
//  Airliners
//
//  Created by AnhDT on 11/23/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class AirPlaneTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
