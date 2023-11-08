//
//  SettingOptionViewModel.swift
//  Messenger
//
//  Created by FFK on 8.11.2023.
//

import SwiftUI

enum SectionOptionViewModel: Int, CaseIterable, Identifiable {
    
case darkeMode
case activeStatus
case accesibility
case privacy
case notifications
    
    var title: String {
        switch self {
        case .darkeMode: return "Dark Mode"
        case .activeStatus: return "Active status"
        case .accesibility: return "Accessibility"
        case .privacy: return "Privacy and Safety"
        case .notifications: return "Notifications"
        }
    }
    var imageName: String {
        switch self {
        case .darkeMode: return "moon.circle.fill"
        case .activeStatus: return "message.badge.circle.fill"
        case .accesibility: return "person.circle.fill"
        case .privacy: return "lock.circle.fill"
        case .notifications: return "bell.circle.fill"
        }
    }
    
    var imageBackgroundColor: Color {
        switch self {
        case .darkeMode: return .black
        case .activeStatus: return Color(.systemGreen)
        case .accesibility: return .black
        case .privacy: return Color(.systemBlue)
        case .notifications: return Color(.systemPurple)
        }
    }
    
    var id: Int { return self.rawValue}
}
