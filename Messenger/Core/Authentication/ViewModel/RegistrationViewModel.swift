//
//  RegistrationViewModel.swift
//  Messenger
//
//  Created by FFK on 13.11.2023.
//

import SwiftUI

class RegistrationViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var fullName = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, fullName: fullName)
    }
}
