//
//  TwitterAppApp.swift
//  TwitterApp
//
//  Created by Jai  on 01/01/24.
//

import SwiftUI
import Firebase

@main
struct TwitterAppApp: App {
    @StateObject var  viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
         ContentView()
                .environmentObject(viewModel)
            
        }
    }
}
