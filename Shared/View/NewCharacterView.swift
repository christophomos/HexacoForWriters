//
//  NewCharacterView.swift
//  HexacoForWriters
//
//  Created by Chris Clark on 2020/8/2.
//

import SwiftUI

struct NewCharacterView: View {
    @Binding var isShowNewInventory: Bool
    @Binding var characters: [Character]
    @State var newCharacter = Character()
    
    @State var responses: [Hexaco60ItemScore] = []
    
    var body: some View {
        if  InventoryStateMachine.stateGivenNew(character: newCharacter) == .inventoryNotStarted {
            CharacterFormView(newCharacter: $newCharacter)
            
        } else if InventoryStateMachine.stateGivenNew(character: newCharacter) == .inventoryInProgress  {
            QuestionView(responses: $responses, newCharacter: $newCharacter)
        } else {
            VStack {
                CharacterView(character: newCharacter)
                Button("Save character") {
                    characters.append(newCharacter)
                    isShowNewInventory = false
                }
            }
        }
        
    }
}

struct NewCharacterView_Previews: PreviewProvider {
    @State static var isShowNewInventory = true
    @State static var characters = Character.testData
    static var previews: some View {
        NewCharacterView(
            isShowNewInventory: $isShowNewInventory,
            characters: $characters)
    }
}
