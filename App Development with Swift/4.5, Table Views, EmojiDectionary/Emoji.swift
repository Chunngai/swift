//
//  Emoji.swift
//  EmojiDectionary
//
//  Created by Sola on 2020/2/1.
//  Copyright © 2020 Sola. All rights reserved.
//

import Foundation

struct Emoji {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
