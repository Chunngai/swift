//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Sola on 2020/1/30.
//  Copyright © 2020 Sola. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
    
    enum ResponseType {
        case single, multiple, ranged
    }
}
