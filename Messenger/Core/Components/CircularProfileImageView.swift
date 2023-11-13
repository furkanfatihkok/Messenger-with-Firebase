//
//  CircularProfileImageView.swift
//  Messenger
//
//  Created by FFK on 8.11.2023.
//

import SwiftUI


enum ProfileImageSize {
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xLarge
    
    var dimesion: CGFloat {
        switch self {
        case .xxSmall: return 28
        case .xSmall: return 32
        case .small: return 40
        case .medium: return 56
        case .large: return 64
        case .xLarge: return 80
        }
    }
}

struct CircularProfileImageView: View {
    
    var user: User?
    let size: ProfileImageSize
    
    var body: some View {
        if let imageUrl = user?.profileImageURL {
            Image(imageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimesion, height: size.dimesion)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimesion, height: size.dimesion)
                .foregroundColor(Color(.systemGray4))
        }
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView(user: User.MOCK_USER, size: .xLarge)
    }
}
