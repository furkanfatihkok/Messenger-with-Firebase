//
//  User.swift
//  Messenger
//
//  Created by FFK on 8.11.2023.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    var id = NSUUID().uuidString
    let fullName: String
    let email: String
    var profileImageURL: String?
}

extension User {
    static let MOCK_USER = User(fullName: "Furkan Fatih Kök", email: "furkanko296@gmail.com",profileImageURL: "ffk")
}
