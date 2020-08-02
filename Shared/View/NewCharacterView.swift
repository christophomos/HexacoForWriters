//
//  NewCharacterView.swift
//  HexacoForWriters
//
//  Created by Chris Clark on 2020/8/2.
//

import SwiftUI

struct NewCharacterView: View {
    @Binding var characters: [Character]
    var body: some View {
        Text("New Inventory")
    }
}

struct NewCharacterView_Previews: PreviewProvider {
    @State static var characters = Character.testData
    static var previews: some View {
        NewCharacterView(characters: $characters)
    }
}
