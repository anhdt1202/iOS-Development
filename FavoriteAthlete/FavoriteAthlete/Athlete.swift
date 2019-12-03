//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by AnhDT on 11/21/19.
//

import Foundation

struct Athlete {
    var name: String
    var age: Int
    var league: String
    var team: String
    var description: String {
        return "\(name) is \(age) years old and play for the \(team) in the \(league)"
    }
}
