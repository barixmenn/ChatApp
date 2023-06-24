//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by Baris on 24.06.2023.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
