//
//  InboxViewModel.swift
//  Messenger
//
//  Created by FFK on 13.11.2023.
//

import Foundation
import Firebase
import Combine

class InboxViewModel: ObservableObject {
    
    @Published var currentUser: User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
                self?.currentUser = user
        }.store(in: &cancellables)
    }
}
