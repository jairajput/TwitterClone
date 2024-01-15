//
//  AuthenticationHeaderView.swift
//  TwitterApp
//
//  Created by Jai  on 15/01/24.
//

import SwiftUI

struct AuthHeaderView: View {
    let title1: String
    let title2: String
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{Spacer()}
            Text(title1)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(title2)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
        }
        .frame(height: 260)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))
    }
}

#Preview {
    AuthHeaderView(title1: "Hello", title2: "Welcome Back")
}
