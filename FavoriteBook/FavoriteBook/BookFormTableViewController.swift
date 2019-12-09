//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by AnhDT on 12/9/19.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    var book: Book?
    struct PropertyKeys {
        static let unwind = "UnwindToBookTable"
    }
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var lengthTextField: UITextField!
    @IBAction func saveButton(_ sender: Any) {
        guard let title = titleTextField.text,
            let author = authorTextField.text,
            let genre = genreTextField.text,
            let length = lengthTextField.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
    }
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    func updateView() {
        guard let book = book else {return}
        
        titleTextField.text = book.title
        authorTextField.text = book.author
        genreTextField.text = book.genre
        lengthTextField.text = book.length
    }
}
