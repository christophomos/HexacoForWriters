//
//  Hexaco.swift
//  PersonalityQuiz
//
//  Created by Chris Clark on 2020/7/13.
//  Copyright © 2020 Qalang Corporation. All rights reserved.
//

import Foundation

struct Hexaco60InventoryScore {
    let h: Hexaco60FactorScore
    let e: Hexaco60FactorScore
    let x: Hexaco60FactorScore
    let a: Hexaco60FactorScore
    let c: Hexaco60FactorScore
    let o: Hexaco60FactorScore
    
    static func random() -> Hexaco60InventoryScore {
        Hexaco60InventoryScore(
            h: Hexaco60FactorScore.random(),
            e: Hexaco60FactorScore.random(),
            x: Hexaco60FactorScore.random(),
            a: Hexaco60FactorScore.random(),
            c: Hexaco60FactorScore.random(),
            o: Hexaco60FactorScore.random())
    }
}
