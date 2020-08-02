//
//  ContentView.swift
//  Shared
//
//  Created by Chris Clark on 2020/8/2.
//

import SwiftUI

struct ContentView: View {
    @State var characters = Character.testData
    
    var body: some View {
        TabView {
            NewCharacterView(characters: $characters)
                .tabItem {
                    Label("New Character", systemImage: "person")
                }
            CompletedInventoryListView(characters: $characters)
                .tabItem {
                    Label("Character List", systemImage: "person.2.fill")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
