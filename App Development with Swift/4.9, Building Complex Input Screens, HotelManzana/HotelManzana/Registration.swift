//
//  Registration.swift
//  HotelManzana
//
//  Created by Sola on 2020/2/2.
//  Copyright © 2020 Sola. All rights reserved.
//

import Foundation

struct Registration {
    var firstName: String
    var lastName: String
    var emailAddress: String
    
    var checkInDate: Date
    var checkOutDate: Date
    var numberOfAdults: Int
    var numberOfChildren: Int
    
    var roomType: RoomType
    var wifi: Bool
}

