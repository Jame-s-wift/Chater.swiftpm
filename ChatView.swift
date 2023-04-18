//
//  File.swift
//  Chater
//
//  Created by James Toh on 17/4/23.
//

import SwiftUI

struct ChatView: View {
    @State var userName = "User"
    var body: some View {
        VStack{
            Text("Hello, \(userName)")
                .font(.largeTitle)
                .bold()
            
        }
    }
}
