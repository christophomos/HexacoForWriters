//
//  InventoryState.swift
//  HexacoForWriters
//
//  Created by Chris Clark on 2020/8/2.
//

import Foundation

public struct InventoryStateMachine {
    static func stateGivenNew(character: Character) -> InventoryState {
        if !character.isHaveAName {
            return .inventoryNotStarted
        } else if character.hexaco == nil {
            return .inventoryInProgress
        } else {
            return .inventoryComplete
        }
    }
}

public enum InventoryState {
    case inventoryNotStarted, inventoryInProgress, inventoryComplete
}
