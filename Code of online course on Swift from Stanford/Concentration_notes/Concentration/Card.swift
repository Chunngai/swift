//
//  Card.swift
//  Concentration
//
//  Created by Sola on 2020/1/26.
//  Copyright © 2020 Sola. All rights reserved.
//

import Foundation

// Part of the model (M)
struct Card: Hashable {
    // Implementation of the Hashable protocol
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }

    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }

    // Properties of the card
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int

    // For generating a unique identifier of the card
    private static var identifierFactory = 0
    // Used in init()
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }

    // Initializer
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
