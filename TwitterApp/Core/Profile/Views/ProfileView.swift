//
//  ProfileView.swift
//  TwitterApp
//
//  Created by Jai  on 12/01/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomLeading)
            {
                Color(.systemBlue)
                    .ignoresSafeArea()
                
                
                VStack {
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .frame(width: 20 , height: 20)
                            .foregroundColor(.white)
                            .offset(x:16, y:12)
                        
                    }
                    
                    Circle()
                        .frame(width: 72 , height: 72)
                    .offset(x:16 , y:27)
                }
            }
            .frame(height: 97)
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}


