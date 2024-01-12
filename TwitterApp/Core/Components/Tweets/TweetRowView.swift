//
//  TweetRowView.swift
//  TwitterApp
//
//  Created by Jai  on 02/01/24.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            HStack(alignment: .top , spacing: 12){
                Circle()
                    .frame(width: 56 , height: 56)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading, spacing: 4){
                    HStack{
                        Text("Bruce Wayne")
                            .font(.subheadline).bold()
                        Text("@batman")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    Text("I Belive In Batman")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
                
            }
            // Action Button
            HStack{
                Button {
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            
            
            Divider()
            
        }
    }
}

#Preview {
    TweetRowView()
}
