//
//  File.swift
//  Chater
//
//  Created by James Toh on 17/4/23.
//

import SwiftUI

struct ChatBotView: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Welcome to chat bot"]
    var body: some View {
        VStack{
            HStack{
                Text("Chat Bot")
                    .font(.largeTitle)
                    .bold()
                Image(systemName: "message.fill")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
            }
            ScrollView{
                ForEach(messages, id: \.self){ message in
                    if message.contains("[USER]"){
                        let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                        
                        HStack{
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .foregroundColor(.white)
                                .background(.blue.opacity(0.8))
                                .cornerRadius(15)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                        }
                    } else {
                        HStack{
                            Text(message)
                                .padding()
                                .background(.gray.opacity(0.15))
                                .cornerRadius(15)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                            Spacer()
                        }
                    }
                }
                .rotationEffect(.degrees(180))
            }
            .rotationEffect(.degrees(180))
            .background(.gray.opacity(0.1))
            HStack{
                TextField("Type something", text: $messageText){
                    
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .padding([.top, .leading, .bottom])
                .onSubmit {
                    // sendMessage
                }
                Button{
                    sendMessage(message: messageText)
                } label: {
                    Image(systemName: "paperplane.circle.fill")
                        .font(.largeTitle)
                        .padding(.trailing, 8.0)
                }
            }
        }
    }
    
    func sendMessage(message: String){
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""
        }
        withAnimation{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                messages.append(getBotResponse(message: message))
            }
        }
    }
}
