//
//  RegistrationionView.swift
//  TwitterApp
//
//  Created by Jai  on 14/01/24.
//

import SwiftUI

struct RegistrationionView: View {
    var body: some View {
        VStack{
            VStack(alignment:.leading){
                HStack{Spacer()}
                Text("Hello")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
            }
            .frame(height: 260)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            
        }
    }
}

#Preview {
    RegistrationionView()
}
