//
//  QuestionView.swift
//  HexacoForWriters
//
//  Created by Chris Clark on 2020/8/9.
//

import SwiftUI

struct QuestionView: View {
    @State var currentResponse = 1.0
    @Binding var responses: [Hexaco60ItemScore]
    @Binding var newCharacter: Character
    var body: some View {
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
    }
}

struct QuestionView_Previews: PreviewProvider {
    
    @State static var responses: [Hexaco60ItemScore] = []
    @State static var newCharacter = Character()
    
    static var previews: some View {
        CharacterFormView(newCharacter: $newCharacter)
    }
}
