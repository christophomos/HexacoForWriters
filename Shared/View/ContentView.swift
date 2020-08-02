//
//  ContentView.swift
//  Shared
//
//  Created by Chris Clark on 2020/8/2.
//

import SwiftUI

struct ContentView: View {
    var characters = Character.testData
    
    var body: some View {
        TabView {
            Text("New Inventory").padding()
                .tabItem {
                    Label("New Inventory", image: "plus")
                }
            CompletedInventoryList(characters: characters)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
