//
//  NewMessageView.swift
//  Messenger
//
//  Created by FFK on 8.11.2023.
//

import SwiftUI

struct NewMessageView: View {
    
    @State private var searchText = ""
    @StateObject var newMessageViewModel = NewMessageViewModel()
    @Environment(\.dismiss) var dissmis
    var body: some View {
        NavigationStack {
            ScrollView {
                TextField("To: ", text: $searchText)
                    .frame(height: 44)
                    .padding(.leading)
                    .background(Color(.systemGroupedBackground))
                
                Text("Contacts".uppercased())
                    .foregroundColor(.gray)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(newMessageViewModel.users) { user in
                    VStack {
                        HStack {
                            CircularProfileImageView(user: user, size: .medium)
                            
                            Text(user.fullName)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Spacer()
                        }
                        .padding(.leading)
                        Divider()
                            .padding(.leading, 40)
                    }
                }
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button ("Cancel") {
                        dissmis()
                    }
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView()
    }
}
