//
//  CompletedInventoryList.swift
//  HexacoForWriters
//
//  Created by Chris Clark on 2020/8/2.
//

import SwiftUI

struct CompletedInventoryList: View {
    var characters: [Character]
    var body: some View {
        List {
            ForEach(characters) { character in
                Text(character.lastName ?? "N/A")
            }
        }
        .tabItem {
            Label("Completed Inventories", image: "clock.fill")
        }
    }
}

struct CompletedInventoryList_Previews: PreviewProvider {
    static var previews: some View {
        CompletedInventoryList(characters: Character.testData)
    }
}
