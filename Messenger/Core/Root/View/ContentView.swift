//
//  ContentView.swift
//  Messenger
//
//  Created by FFK on 8.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        Group {
            if contentViewModel.userSession != nil {
                InboxView()
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
