//
//  Question.swift
//  Quizzler
//
//  Created by Siddharth Kulkarni on 12/2/17.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
