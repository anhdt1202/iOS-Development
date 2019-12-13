//
//  ToDoCell.swift
//  ToDoList
//
//  Created by AnhDT on 12/13/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit
@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}
class ToDoCell: UITableViewCell {
    var delegate: ToDoCellDelegate?
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBAction func completeButtonTapped() {
        delegate?.checkmarkTapped(sender: self)
    }
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
