//
//  AnimalType.swift
//  PersonalityQuiz
//
//  Created by Sola on 2020/1/30.
//  Copyright © 2020 Sola. All rights reserved.
//

import Foundation

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends"
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms"
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy"
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race"
        }
    }
}
