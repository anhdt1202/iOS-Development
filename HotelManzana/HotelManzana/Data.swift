//
//  Data.swift
//  HotelManzana
//
//  Created by AnhDT on 12/10/19.
//  Copyright © 2019 apple. All rights reserved.
//

import Foundation

struct Registration {
    var firstName: String
    var lastName: String
    var emailAddress: String
    
    var checkInDate: Date
    var checkOutDate: Date
    var numberOfAdult: Int
    var numberOfChildren: Int
    
    var roomType: RoomType
    var wifi: Bool
}
struct RoomType: Equatable {
    static var all: [RoomType] {
        return [RoomType(id: 0, name: "Two Queens", shortName: "2Q", price: 179),
                RoomType(id: 1, name: "One King", shortName: "K", price: 209),
                RoomType(id: 2, name: "Penthouse Suite", shortName: "PHS", price: 309)]
    }
    static func  == (lhs: RoomType, rhs: RoomType) -> Bool {
        return lhs.id == rhs.id
    }
    var id: Int
    var name: String
    var shortName: String
    var price: Int
}


