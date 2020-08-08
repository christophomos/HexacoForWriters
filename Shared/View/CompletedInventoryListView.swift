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
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("First name:")
                            Text("Last name:")
                            Text("Age:")
                            Text("Gender:")
                        }
                        VStack(alignment: .leading) {
                            Text(textOrNA(character.firstName))
                            Text(textOrNA(character.lastName))
                            Text(
                                intOrNA(character.age))
                            Text(
                                character.gender?.description ??
                                    "N/A"
                            )
                        }
                    }
                    HStack {
                        if let hexaco = character.hexaco {
                            Text("H: \(hexaco.h.value)")
                            Text("E: \(hexaco.e.value)")
                            Text("X: \(hexaco.x.value)")
                            Text("A: \(hexaco.a.value)")
                            Text("C: \(hexaco.c.value)")
                            Text("O: \(hexaco.o.value)")
                        }
                        else {
                            Text("No HEXACO score")
                        }
                    }
                }
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

fileprivate func textOrNA(_ text: String?) -> String {
    text ?? "N/A"
}

fileprivate func intOrNA(_ int: Int?) -> String {
    if let int = int {
        return "\(int)"
    } else {
        return "N/A"
    }
}
