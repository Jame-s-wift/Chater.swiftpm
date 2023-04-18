//
//  File.swift
//  Chater
//
//  Created by James Toh on 17/4/23.
//

import SwiftUI

struct ConversationTipsView: View {
    @State var userName = "User"
    @State var sheetIsPresented = true
    var body: some View {
        VStack{
            Text("view")
        }
        .sheet(isPresented: $sheetIsPresented) {
            WrapOverView()
        }
    }
    
    struct WrapOverView: View {
        var body: some View {
            VStack{
                Spacer()
                
                Text("Welcome to Conversation Tips!")
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                Spacer()
                
                Text("How do I use conversation tips?")
                    .font(.title)
                    .bold()
                    .padding()
                
                Text("Press the left and right arrow buttons to show a new conversation tip")
                Spacer()
            }
        }
    }
}
