//
//  Scale.swift
//  PersonalityQuiz
//
//  Created by Chris Clark on 2020/7/13.
//  Copyright © 2020 Qalang Corporation. All rights reserved.
//

import Foundation

struct Hexaco60FactorScore {
    let value: Int
    
    static let min = 10
    static let max = 50
    
    init(value: Int) {
        if (value < Hexaco60FactorScore.min) || (value > Hexaco60FactorScore.max) {
            fatalError("\(value) is invalid - Scale value must be between \(Hexaco60FactorScore.min) and \(Hexaco60FactorScore.max) inclusive")
        }
        self.value = value
    }
    
    static func random() -> Hexaco60FactorScore {
        Hexaco60FactorScore(value: Int.random(in: Hexaco60FactorScore.min...Hexaco60FactorScore.max))
    }
}
