//
//  ContentView.swift
//  Shared
//
//  Created by Chris Clark on 2020/8/2.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Text("Hello, world!").padding()
                .tabItem {
                    Label("New Inventory", image: "plus")
                }
            Text("Hello, world!").padding()
                .tabItem {
                    Label("Completed Inventories", image: "clock.fill")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
