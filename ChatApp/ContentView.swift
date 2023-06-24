//
//  ContentView.swift
//  ChatApp
//
//  Created by Baris on 24.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    var messageArray = ["Hello you","How are you doing","I've been bulding SwiftUI application."]
    @StateObject var messagesManager = MessagesManager()
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollView{
                    ForEach(messagesManager.messages, id: \.id) { message in
                        MessageBubble(message: message)
                    }
                }
                .padding(.top, 10)
                .background(.white)
                .cornerRadius(30, corners: [.topLeft, .topRight])
            }
            .background(Color("Peach"))
            MessageField().environmentObject(messagesManager)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
