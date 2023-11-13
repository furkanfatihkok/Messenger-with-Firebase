//
//  LoginViewModel.swift
//  Messenger
//
//  Created by FFK on 13.11.2023.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
    
}
