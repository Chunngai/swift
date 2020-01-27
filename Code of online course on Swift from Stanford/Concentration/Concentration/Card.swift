//
//  Card.swift
//  Concentration
//
//  Created by Sola on 2020/1/26.
//  Copyright © 2020 Sola. All rights reserved.
//

import Foundation

// Part of model
struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    // For generating a unique identifier of the card
    private static var identifierFactory = 0
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
