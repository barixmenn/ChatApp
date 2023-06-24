//
//  ContentView.swift
//  ChatApp
//
//  Created by Baris on 24.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleRow()
        }
        .background(Color("Peach"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
