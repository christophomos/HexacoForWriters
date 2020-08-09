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

    @State var currentResponse = 1.0
    
    @State var responses: [Hexaco60ItemScore] = []
    
    var body: some View {
        if  InventoryStateMachine.stateGivenNew(character: newCharacter) == .inventoryNotStarted {
            CharacterFormView(newCharacter: $newCharacter)
            
        } else if InventoryStateMachine.stateGivenNew(character: newCharacter) == .inventoryInProgress  {
            VStack {
                Text("Question \(responses.count + 1) of \(Hexaco60Inventory.questions.count)")
                    .padding()
                Text(Hexaco60Inventory.questions[responses.count].text)
                Form {
                    VStack {
                        Text("Score: \(Int(currentResponse.rounded()))")
                        Slider(
                            value: $currentResponse,
                            in: 1...5)
                    }.padding()
                    Button ("Next Question") {
                        responses.append(
                            Hexaco60ItemScore(value: Int(currentResponse))
                        )
                        if responses.count == Hexaco60Inventory.questions.count {
                            let completedInventory = Hexaco60CompletedInventory(formQuestions: Hexaco60Inventory.questions, responses: responses)
                            newCharacter.hexaco = completedInventory.score
                        }
                    }
                }
            }
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

