//
//  StoreItem.swift
//  iTunesSearch
//
//  Created by AnhDT on 12/19/19.
//  Copyright © 2019 Caleb Hicks. All rights reserved.
//

import Foundation
struct StoreItem: Codable {
    var title: String
    var artist: String
    var kind: String
    var artwork: URL
    var description: String
   
   
    enum CodingKeys: String, CodingKey {
        case title = "trackName"
        case artist = "artistName"
        case kind
        case artwork = "artworkUrl100"
        case description
        
    }
    enum AdditionKeys: String, CodingKey {
        case longDescription
    }
    init(from decoder: Decoder) throws {
        let valueContainer = try decoder.container(keyedBy: CodingKeys.self)
        
        self.title = try valueContainer.decode(String.self, forKey: CodingKeys.title)
        self.artist = try valueContainer.decode(String.self, forKey: CodingKeys.artist)
        self.kind = try valueContainer.decode(String.self, forKey: CodingKeys.kind)
        self.artwork = try valueContainer.decode(URL.self, forKey: CodingKeys.artwork)
        
        if let description = try? valueContainer.decode(String.self, forKey: CodingKeys.description) {
            self.description = description
        } else {
            let additionalValue = try decoder.container(keyedBy: AdditionKeys.self)
            self.description = (try? additionalValue.decode(String.self, forKey: AdditionKeys.longDescription)) ?? ""
        }
    }
}

struct StoreItems: Codable {
    let results: [StoreItem]
}
