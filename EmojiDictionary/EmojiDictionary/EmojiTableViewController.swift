//
//  EmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by AnhDT on 12/4/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    @IBAction func buttonTapped(_ sender: UIBarButtonItem) {
        let tableViewEditingMode = tableView.isEditing
        tableView.setEditing(!tableViewEditingMode, animated: true)
    }
    
    var emojis: [Emoji] = []
//        Emoji(symbol: "😀", name: "Grinning Face", description: "A typical smiley face.", usage: "happiness"),
//        Emoji(symbol: "😕", name: "Confused Face", description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
//        Emoji(symbol: "😍", name: "Heart Eyes", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive"),
//        Emoji(symbol: "👮", name: "Police Officer", description: "A police officer wearing a blue cap with a gold badge.", usage: "person of authority"),
//        Emoji(symbol: "🐢", name: "Turtle", description: "A cute turtle.", usage: "Something slow"),
//        Emoji(symbol: "🐘", name: "Elephant", description: "A gray elephant.", usage: "good memory"),
//        Emoji(symbol: "🍝", name: "Spaghetti", description: "A plate of spaghetti.", usage: "spaghetti"),
//        Emoji(symbol: "🎲", name: "Die", description: "A single die.", usage: "taking a risk, chance; game"),
//        Emoji(symbol: "⛺️", name: "Tent", description: "Asmall tent.", usage: "camping"),
//        Emoji(symbol: "📚", name: "Stack of Books", description: "Three colored books stacked on each other.",
//              usage: "homework, studying"),
//        Emoji(symbol: "💔", name: "Broken Heart", description: "A red, broken heart.", usage: "extreme sadness"),
//        Emoji(symbol: "💤", name: "Snore", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
//        Emoji(symbol: "🏁", name: "Checkered Flag", description: "A black-and-white checkered flag.", usage:
//            "completion")
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44.0
        if let saveEmojis = Emoji.loadfromFile(){
            emojis = saveEmojis
        }else {
            emojis = Emoji.loadSampleEmoji()
        }
        }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return emojis.count
        } else {
            return 0
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath) as! EmojiTableViewCell
        let emoji = emojis[indexPath.row]
        cell.update(with: emoji)
        cell.showsReorderControl = true
        return cell
        //        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)
        //        let emoji = emojis[indexPath.row]
        //        cell.textLabel?.text = "\(emoji.symbol) - \(emoji.name)"
        //        cell.detailTextLabel?.text = emoji.description
        //        cell.showsReorderControl = true
        //        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let moveEmoji = emojis.remove(at: sourceIndexPath.row)
        emojis.insert(moveEmoji, at: destinationIndexPath.row)
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            emojis.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            Emoji.saveToFile(emojis: emojis)
        }
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EditEmoji" {
            let indexPath = tableView.indexPathForSelectedRow!
            let emoji = emojis[indexPath.row]
            let navController = segue.destination as! UINavigationController
            let addEditEmojiTableViewController = navController.topViewController as! AddEditEmojiTableViewController
            addEditEmojiTableViewController.emoji = emoji
        }
        
    }
    
    @IBAction func unwindToEmojiTableViewController(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveUnwind" else { return }
        let sourceViewController = segue.source as! AddEditEmojiTableViewController
        //        let indexPath = tableView.indexPathForSelectedRow!
        //        let emoji = emojis[indexPath.row]
        if let emoji = sourceViewController.emoji{
            if let seclectedIndexPath = tableView.indexPathForSelectedRow {
                emojis[seclectedIndexPath.row] = emoji
                tableView.reloadRows(at: [seclectedIndexPath], with: .none)
                Emoji.saveToFile(emojis: emojis)
            } else {
                let newIndexPath = IndexPath(row: emojis.count, section: 0)
                emojis.append(emoji)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
                Emoji.saveToFile(emojis: emojis)
            }
        }
    }
    
    
}
 
