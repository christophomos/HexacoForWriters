//
//  ContentView.swift
//  Shared
//
//  Created by Chris Clark on 2020/8/2.
//

import SwiftUI

struct ContentView: View {
    @State var characters = Character.testData
    @State var isShowNewInventory = false
    
    var body: some View {
        CompletedInventoryListView(characters: $characters)
            .toolbar {
                //https://swiftwithmajid.com/2020/07/15/mastering-toolbars-in-swiftui/
                ToolbarItem {
                    Button("New Character Inventory") {
                        isShowNewInventory = true
                        print(isShowNewInventory)
                    }
                }
            }
            .sheet(isPresented: $isShowNewInventory) {
                isShowNewInventory = false
            }
            content:
            {
                NewCharacterView(characters: $characters)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
