//
//  UserService.swift
//  Messenger
//
//  Created by FFK on 13.11.2023.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class UserService {
    
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let snapShot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snapShot.data(as: User.self)
        self.currentUser = user
        print("DEBUG: Current user in service is \(currentUser)")
    }
    
    
    static func fetchAllUser() async throws -> [User] {
        let snapShot = try await Firestore.firestore().collection("users").getDocuments()
        return snapShot.documents.compactMap({ try? $0.data(as: User.self)})
    }
}
