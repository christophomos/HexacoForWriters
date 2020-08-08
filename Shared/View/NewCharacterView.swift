//
//  NewCharacterView.swift
//  HexacoForWriters
//
//  Created by Chris Clark on 2020/8/2.
//

import SwiftUI

struct NewCharacterView: View {
    @Binding var characters: [Character]
    @State var newCharacter = Character()
    @State var firstName = ""
    @State var lastName = ""
    @State var gender = Gender.female
    @State var age = 0.0
    
    @State var currentResponse = 1.0
    
    @State var responses: [Hexaco60ItemScore] = []
    
    var body: some View {
        if  InventoryStateMachine.stateGivenNew(character: newCharacter) == .inventoryNotStarted {
            VStack {
                Text("Before you begin a new inventory, you must fill in your character's first and/or last name.")
                    .multilineTextAlignment(.center)
                // Navigation view is for use with Picker
                
                Form {
                    TextField("First name", text: $firstName)
                    TextField("Last name", text: $lastName)
                    //https://github.com/onmyway133/blog/issues/611
                    VStack {
                        Text("Gender")
                        Picker(selection: $gender, label: Text("Gender")) {
                            ForEach(Gender.allCases, id: \.self) {
                                Text($0.description)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    VStack {
                        Text("Age: \(Int(age.rounded()))")
                        Slider(value: $age, in: 0...100)
                    }.padding()
                    Button ("Begin HEXACO") {
                        newCharacter.firstName = firstName
                        newCharacter.lastName = lastName
                        newCharacter.gender = gender
                        newCharacter.age = Int(age.rounded())
                    }
                    .disabled(firstName.isEmpty && lastName.isEmpty)
                }
                
            }
            
        } else {
            VStack {
                Text("Question \(responses.count) of \(Hexaco60Inventory.questions.count)")
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
                    }
                }
            }
        }
        
    }
}

struct NewCharacterView_Previews: PreviewProvider {
    @State static var characters = Character.testData
    static var previews: some View {
        NewCharacterView(characters: $characters)
    }
}
