//
//  File.swift
//  Chater
//
//  Created by James Toh on 17/4/23.
//

import SwiftUI

struct SettingsView: View {
    @State var userName = "User"
    @EnvironmentObject var appState: AppState
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                Form{
                    NavigationLink{
                        UserNameView()
                    } label: {
                        Text("Change username")
                    }
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}
