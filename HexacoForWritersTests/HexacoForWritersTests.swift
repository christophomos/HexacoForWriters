//
//  HexacoForWritersTests.swift
//  HexacoForWritersTests
//
//  Created by Chris Clark on 2020/8/2.
//

import XCTest

class HexacoForWritersTests: XCTestCase {
    
    override func setUpWithError() throws {
    }
    
    override func tearDownWithError() throws {
    }
    
    
    func testHexaco60ItemScore_rawMinimumScore() {
        var testResponses: [Hexaco60ItemScore] = []
        for _ in 1...60 {
            testResponses.append(Hexaco60ItemScore(value: 1))
        }
        let valueSum = testResponses.reduce(0) {
            $0 + $1.value
        }
        XCTAssertEqual(valueSum, 60)
    }
    
    func testHexaco60ItemScore_rawMaximumScore() {
        var testResponses: [Hexaco60ItemScore] = []
        for _ in 1...60 {
            testResponses.append(Hexaco60ItemScore(value: 5))
        }
        let valueSum = testResponses.reduce(0) {
            $0 + $1.value
        }
        XCTAssertEqual(valueSum, 300)
    }
    
    // TODO: each test should have a single assertion
    func testHexaco60Inventory_correctFactorItemRatio() {
        var hCount = 0
        var eCount = 0
        var xCount = 0
        var aCount = 0
        var cCount = 0
        var oCount = 0
        
        for question in Hexaco60Inventory.questions {
            switch question.hexacoScale {
            case .h:
                hCount += 1
            case .e:
                eCount += 1
            case .x:
                xCount += 1
            case .a:
                aCount += 1
            case .c:
                cCount += 1
            case .o:
                oCount += 1
            }
        }
        XCTAssertEqual(hCount, 10)
        XCTAssertEqual(eCount, 10)
        XCTAssertEqual(xCount, 10)
        XCTAssertEqual(aCount, 10)
        XCTAssertEqual(cCount, 10)
        XCTAssertEqual(oCount, 10)
    }
    
    func testHexaco60Inventory_minimumFactoreScores() {
        var testResponses: [Hexaco60ItemScore] = []
        for question in Hexaco60Inventory.questions  {
            let responseValue: Int
            if question.reversed {
                responseValue = Hexaco60ItemScore.max
            } else {
                responseValue = Hexaco60ItemScore.min
            }
            testResponses.append(Hexaco60ItemScore(value: responseValue))
        }
        let test = Hexaco60CompletedInventory(
            formQuestions: Hexaco60Inventory.questions,
            responses: testResponses)
        XCTAssertEqual(test.score.h.value, Hexaco60ScaleScore.min)
        XCTAssertEqual(test.score.e.value, Hexaco60ScaleScore.min)
        XCTAssertEqual(test.score.x.value, Hexaco60ScaleScore.min)
        XCTAssertEqual(test.score.a.value, Hexaco60ScaleScore.min)
        XCTAssertEqual(test.score.c.value, Hexaco60ScaleScore.min)
        XCTAssertEqual(test.score.o.value, Hexaco60ScaleScore.min)
    }
    
    func testHexaco60Inventory_maximumFactorScores() {
        var testResponses: [Hexaco60ItemScore] = []
        for question in Hexaco60Inventory.questions  {
            let responseValue: Int
            if question.reversed {
                responseValue = Hexaco60ItemScore.min
            } else {
                responseValue = Hexaco60ItemScore.max
            }
            testResponses.append(Hexaco60ItemScore(value: responseValue))
        }
        let test = Hexaco60CompletedInventory(
            formQuestions: Hexaco60Inventory.questions,
            responses: testResponses)
        XCTAssertEqual(test.score.h.value, Hexaco60ScaleScore.max)
        XCTAssertEqual(test.score.e.value, Hexaco60ScaleScore.max)
        XCTAssertEqual(test.score.x.value, Hexaco60ScaleScore.max)
        XCTAssertEqual(test.score.a.value, Hexaco60ScaleScore.max)
        XCTAssertEqual(test.score.c.value, Hexaco60ScaleScore.max)
        XCTAssertEqual(test.score.o.value, Hexaco60ScaleScore.max)
    }
    
    func testInventoryStateMachine_inventoryNotStarted() {
        let character = Character()
        XCTAssertEqual(
            InventoryStateMachine.stateGivenNew(character: character), InventoryState.inventoryNotStarted)
    }
    
    func testInventoryStateMachine_whenOnlyLastNameNotNil_inventoryInProgress() {
        let character = Character(lastName: "Clark")
        XCTAssertEqual(
            InventoryStateMachine.stateGivenNew(character: character), InventoryState.inventoryInProgress)
    }
    
    // TODO: Remove randomization for consistent tests
    func testInventoryStateMachine_whenHexacoComplete_inventoryComplete() {
        let character = Character(lastName: "Clark", hexaco: Hexaco60InventoryScore.random())
        XCTAssertEqual(
            InventoryStateMachine.stateGivenNew(character: character), InventoryState.inventoryComplete)
    }
}
