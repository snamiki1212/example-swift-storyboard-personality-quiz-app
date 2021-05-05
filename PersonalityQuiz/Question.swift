//
//  Question.swift
//  PersonalityQuiz
//
//  Created by shunnamiki on 2021/05/04.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}


enum ResponseType {
    case single, multiple, ranged
}


struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibily outgoing."
        case .cat:
            return "Mischievous"
        case .rabbit:
            return "You love everything that's soft"
        case .turtle:
            return "You are wise."
        }
    }
}
