//
//  RegistrationionView.swift
//  TwitterApp
//
//  Created by Jai  on 14/01/24.
//

import SwiftUI

struct RegistrationView: View {
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Get Started.", title2: "Create Your Account")
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    RegistrationView()
}
