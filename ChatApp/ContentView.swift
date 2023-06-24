//
//  ContentView.swift
//  ChatApp
//
//  Created by Baris on 24.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    var messageArray = ["Hello you","How are you doing","I've been bulding SwiftUI application."]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollView{
                    ForEach(messageArray, id: \.self) { text in
                        MessageBubble(message: Message(id: "123", text: text, received: true, timestamp: Date()))
                    }
                }
                .padding(.top, 10)
                .background(.white)
                .cornerRadius(30)
            }
            .background(Color("Peach"))
            MessageField()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
