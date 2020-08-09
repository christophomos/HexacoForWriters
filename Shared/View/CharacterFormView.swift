//
//  CharacterFormView.swift
//  HexacoForWriters
//
//  Created by Chris Clark on 2020/8/9.
//

import SwiftUI

struct CharacterFormView: View {
    
    @Binding var newCharacter: Character
    @State var firstName = ""
    @State var lastName = ""
    @State var gender = Gender.female
    @State var age = 0.0
    var body: some View {
        VStack {
            Text("Before you begin a new inventory, you must fill in your character's first and/or last name.")
                .multilineTextAlignment(.center)
                .padding(.all)
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
    }
}

struct CharacterFormView_Previews: PreviewProvider {
    @State static var newCharacter = Character()
    static var previews: some View {
        CharacterFormView(newCharacter: $newCharacter)
    }
}
