//
//  ProfileViewModel.swift
//  Messenger
//
//  Created by FFK on 8.11.2023.
//

import SwiftUI
import PhotosUI

class ProfileViewModel: ObservableObject {
    @Published var selecetedItem: PhotosPickerItem? {
        didSet { Task { try await loadImage() }}
    }
    
    @Published var profileImage: Image?
    
    func loadImage() async throws {
        guard let item = selecetedItem else { return }
        guard let imageData = try await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: imageData) else { return }
        self.profileImage = Image(uiImage: uiImage)
    }
}
