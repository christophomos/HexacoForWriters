//
//  CompletedInventoryList.swift
//  HexacoForWriters
//
//  Created by Chris Clark on 2020/8/2.
//

import SwiftUI

struct CompletedInventoryListView: View {
    @Binding var characters: [Character]
    
    var body: some View {
        List {
            ForEach(characters) { character in
                CharacterView(character: character)
            }
        }
    }
}

struct CompletedInventoryList_Previews: PreviewProvider {
    @State static var characters = Character.testData
    static var previews: some View {
        CompletedInventoryListView(characters: $characters)
    }
}
