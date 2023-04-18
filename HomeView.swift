//
//  File.swift
//  Chater
//
//  Created by James Toh on 17/4/23.
//

import SwiftUI
struct HomeView: View {
    @State private var quote = information.quotes.randomElement()!
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.blue.opacity(0.1))
                .alignmentGuide(.top) { d in d[.top] }
            VStack{
                
                Spacer()
                
                Text("Hello, user")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                Spacer()
                
                Text(quote)
                    .padding(.horizontal, 40.0)
                    .font(.subheadline)
                    .frame(width: 500, height: 150)
                    .background(.gray.opacity(0.1))
                    .cornerRadius(15)
                    .padding()
                
                Button{
                    quote = information.quotes.randomElement()!
                } label: {
                    Text("Quote")
                        .font(.subheadline)
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }
                Spacer()
            }
        }
    }
}
