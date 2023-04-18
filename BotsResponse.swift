//
//  BotsResponse.swift
//  Chater
//
//  Created by James Toh on 17/4/23.
//

import Foundation

func getBotResponse(message: String)-> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("hello"){
        return "Hey there! What would you like to talk about today?"
    } else if tempMessage.contains("humor"){
        return "heres an example of using humor in your conversation"
    } else {
        return "Thats cool"
    }
}
