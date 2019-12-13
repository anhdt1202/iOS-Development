//
//  ToDo.swift
//  ToDoList
//
//  Created by AnhDT on 12/12/19.
//  Copyright © 2019 apple. All rights reserved.
//

import Foundation

struct ToDo: Codable {
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    static let DocumentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("todos").appendingPathExtension("plist")
    static func loadToDos() -> [ToDo]? {
        guard let codeToDos = try? Data(contentsOf: ArchiveURL)
        else {return nil}
            let propertyListDecoder = PropertyListDecoder()
        return try? propertyListDecoder.decode(Array<ToDo>.self, from: codeToDos)
    }
    
    static func loadSampleToDos() -> [ToDo] {
        
        let todo1 = ToDo(title: "To Do One", isComplete: false, dueDate: Date(), notes: "Notes 1")
        let todo2 = ToDo(title: "To Do Two", isComplete: false, dueDate: Date(), notes: "Notes 2")
        let todo3 = ToDo(title: "To Do Three", isComplete: false, dueDate: Date(), notes: "Notes 3")
        return [todo1, todo2, todo3]
    }
    static let dueDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        formatter.dateStyle = .short
        return formatter
    }()
    static func saveToDos(_ todos: [ToDo]) {
        let propertyListEncoder = PropertyListEncoder()
        let codeToDos = try?propertyListEncoder.encode(todos)
        try? codeToDos?.write(to: ArchiveURL, options: .noFileProtection)
    }
}
