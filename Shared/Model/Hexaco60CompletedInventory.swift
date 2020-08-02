//
//  Hexaco60Test.swift
//  PersonalityQuiz
//
//  Created by Chris Clark on 2020/7/13.
//  Copyright © 2020 Qalang Corporation. All rights reserved.
//

import Foundation

struct Hexaco60CompletedInventory {
    let score: Hexaco60InventoryScore
    let responses: [Hexaco60ItemScore]
    
    init(formQuestions: [HexacoInventoryItem], responses: [Hexaco60ItemScore]) {
        if formQuestions.count != responses.count {
            fatalError("Form has \(formQuestions.count) questions but test has \(responses.count) responses")
        }
        self.responses = responses
        
        score = Hexaco60CompletedInventory.scoreTest(formQuestions: formQuestions, responses: responses)
    }
    
    private static func scoreTest(
        formQuestions: [HexacoInventoryItem],
        responses: [Hexaco60ItemScore]) -> Hexaco60InventoryScore {
        
        var hTotal = 0
        var eTotal = 0
        var xTotal = 0
        var aTotal = 0
        var cTotal = 0
        var oTotal = 0
        
        for i in 0..<formQuestions.count {
            let question = formQuestions[i]
            let response = responses[i]
            let rawScore = response.value
            let score:Int
            if !question.reversed  {
                score = rawScore
            } else {
                switch rawScore {
                case 5:
                    score = 1
                case 4:
                    score = 2
                case 3:
                    score = 3
                case 2:
                    score = 4
                case 1:
                    score = 5
                default:
                    fatalError()
                }
            }
            switch question.hexacoScale {
            case .h:
                hTotal += score
            case .e:
                eTotal += score
            case .x:
                xTotal += score
            case .a:
                aTotal += score
            case .c:
                cTotal += score
            case .o:
                oTotal += score
            }
        }
        return Hexaco60InventoryScore(
            h: Hexaco60FactorScore(value: hTotal),
            e: Hexaco60FactorScore(value: eTotal),
            x: Hexaco60FactorScore(value: xTotal),
            a: Hexaco60FactorScore(value: aTotal),
            c: Hexaco60FactorScore(value: cTotal),
            o: Hexaco60FactorScore(value: oTotal))
    }
    
}
