//
//  Message.swift
//  ChatApp
//
//  Created by Baris on 24.06.2023.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
