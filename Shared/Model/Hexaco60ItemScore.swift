//
//  Hexaco60QuestionScore.swift
//  PersonalityQuiz
//
//  Created by Chris Clark on 2020/7/13.
//  Copyright © 2020 Qalang Corporation. All rights reserved.
//

import Foundation

struct Hexaco60ItemScore {
    let value: Int
    
    static let min = 1
    static let max = 5
    
    init(value: Int) {
        if (value < Hexaco60ItemScore.min) || (value > Hexaco60ItemScore.max) {
            fatalError("\(value) is invalid - value must be between \(Hexaco60ItemScore.min) and \(Hexaco60ItemScore.max) inclusive")
        }
        self.value = value
    }
}
