//
//  ViewController.swift
//  Apple Pie
//
//  Created by AnhDT on 8/9/1398 AP.
//  Copyright © 1398 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!

    var listOfWords = ["buccaneqer", "swift", "glorious",
    "incandescent", "bug", "program"]
   
    let incorrectMovesAllowed = 7
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLoss = 0 {
        didSet {
            newRound()
        }
    }
    var currentGame: Game!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    func newRound() {
        if !listOfWords.isEmpty{
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
        enableLetterButtons(true)
        updateUI()
        } else {
            enableLetterButtons(false)
        }
    }
    
    func enableLetterButtons(_ enable: Bool) {
      for button in letterButtons {
        button.isEnabled = enable
      }
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLoss += 1
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        } else {
            updateUI()
        }
    }
    
    func updateUI(){
        var letters = [String]()
        for letter in currentGame.formattedWord {
                letters.append(String(letter))
            }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Win: \(totalWins), Losses: \(totalLoss)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    
}

