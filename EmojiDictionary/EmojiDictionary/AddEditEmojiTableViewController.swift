//
//  AddEditEmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by AnhDT on 12/5/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController {
    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var usageTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var descriptionTextField: UITextField!
    var emoji: Emoji?
    func updateSaveButton() {
        let symbolText = symbolTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        let usageText = usageTextField.text ?? ""
        saveButton.isEnabled = !symbolText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty && !usageText.isEmpty
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let emoji = emoji{
        symbolTextField.text = emoji.symbol
        nameTextField.text = emoji.name
        descriptionTextField.text = emoji.description
        usageTextField.text = emoji.usage
    }
        updateSaveButton()
    }
    @IBAction func textEditingChanged(_ sender: UITextField) {
        updateSaveButton()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveUnwind" else {
            return
        }
        let symbol = symbolTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        let usage = usageTextField.text ?? ""
        emoji = Emoji(symbol: symbol, name: name, description: description, usage: usage)
        
    }
}
