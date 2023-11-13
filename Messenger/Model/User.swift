//
//  User.swift
//  Messenger
//
//  Created by FFK on 8.11.2023.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Codable, Identifiable, Hashable {
    @DocumentID var uid: String?
    let fullName: String
    let email: String
    var profileImageURL: String?
    
    var id: String {
        return uid ?? NSUUID().uuidString
    }
}

extension User {
    static let MOCK_USER = User(fullName: "Furkan Fatih Kök", email: "furkanko296@gmail.com",profileImageURL: "ffk")
}
