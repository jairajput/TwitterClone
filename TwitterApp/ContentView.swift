//
//  ContentView.swift
//  TwitterApp
//
//  Created by Jai  on 01/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @EnvironmentObject var  viewModel:AuthViewModel
    var body: some View {
        NavigationView{
            Group{
                // No User Logged In
                if viewModel.userSession == nil {
                    
                } else {
                    // Have User Logged In
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
