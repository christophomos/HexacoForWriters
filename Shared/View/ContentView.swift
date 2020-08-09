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
                
                ToolbarItem {
                    VStack {
                        Button("New Character Inventory") {
                            isShowNewInventory = true
                        }
                        .padding(.bottom)
                        .font(.largeTitle)
                        Spacer()
                    }
                }
                
            }
            .sheet(isPresented: $isShowNewInventory) {
                isShowNewInventory = false
            }
            content:
            {
                NewCharacterView(
                    isShowNewInventory: $isShowNewInventory, characters: $characters)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
