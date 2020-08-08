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
    var body: some View {
        if  InventoryStateMachine.stateGivenNew(character: newCharacter) == .inventoryNotStarted {
            VStack {
                Text("To begin a new inventory, fill in at minimum your character's first and/or last name. The other fields are optional.")
                    .multilineTextAlignment(.center)
//                Form {
//                    Text
//                }
            }
            .navigationBarBackButtonHidden(true)
            .toolbar(items: {
                ToolbarItem {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                }
            })
        } else {
            VStack {
                Text("State not yet implemented")
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
