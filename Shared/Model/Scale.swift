//
//  Scale.swift
//  PersonalityQuiz
//
//  Created by Chris Clark on 2020/7/13.
//  Copyright © 2020 Qalang Corporation. All rights reserved.
//
//   NOTE: Only compatible with HEXACO-60
//

import Foundation

struct Hexaco60Scale {
    let value: Int
    
    static let min = 10
    static let max = 50
    
    init(value: Int) {
        if (value < Hexaco60Scale.min) || (value > Hexaco60Scale.max) {
            fatalError("\(value) is invalid - Scale value must be between \(Hexaco60Scale.min) and \(Hexaco60Scale.max) inclusive")
        }
        self.value = value
    }
}
