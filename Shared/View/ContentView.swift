//
//  ContentView.swift
//  Shared
//
//  Created by Chris Clark on 2020/8/2.
//

import SwiftUI

struct ContentView: View {
    @State var characters = Character.sampleCharacter
    @State var isShowNewInventory = false
    @State var isShowIntroduction = true
    
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
                        .sheet(isPresented: $isShowIntroduction) {
                            isShowIntroduction = false
                        }
                        content:
                        {
                            VStack {
                                Spacer()
                                Image("HEXACO_head")
                                Text("Welcome to HEXACO for Writers. Take a personality test on behalf of your fictional characters.")
                                    .padding(.bottom)
                                Link("Learn more about the HEXACO Personality Inventory", destination: URL(string: "https://hexaco.org/")!)
                                    .padding()
                                Button("Begin") {
                                    isShowIntroduction = false
                                }
                                .font(.largeTitle)
                                Spacer()
                            }
                        }
                        Spacer()
                    }
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
