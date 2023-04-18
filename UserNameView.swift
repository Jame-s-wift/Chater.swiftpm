//
//  UserNameView.swift
//  Chater
//
//  Created by James Toh on 18/4/23.
//

import Foundation
import SwiftUI

struct UserNameView: View{
    
    @EnvironmentObject var appState: AppState
    
    var body: some View{
        VStack{
            Text("Current username: \(appState.userName)")
            
            TextField("Input new username", text: $appState.userName)
                .padding()
                .background(.gray.opacity(0.2))
                .cornerRadius(15)
                .padding()
                .frame(width: 500)
        }
    }
}
