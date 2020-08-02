//
//  Scale.swift
//  PersonalityQuiz
//
//  Created by Chris Clark on 2020/7/13.
//  Copyright © 2020 Qalang Corporation. All rights reserved.
//

import Foundation

struct Hexaco60ScaleScore {
    let value: Int
    
    static let min = 10
    static let max = 50
    
    init(value: Int) {
        if (value < Hexaco60ScaleScore.min) || (value > Hexaco60ScaleScore.max) {
            fatalError("\(value) is invalid - Scale value must be between \(Hexaco60ScaleScore.min) and \(Hexaco60ScaleScore.max) inclusive")
        }
        self.value = value
    }
}
