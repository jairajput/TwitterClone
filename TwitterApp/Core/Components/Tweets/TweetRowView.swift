//
//  TweetRowView.swift
//  TwitterApp
//
//  Created by Jai  on 02/01/24.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        
        VStack{
            HStack(alignment: .top , spacing: 12){
                Circle()
                    .frame(width: 56 , height: 56)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading){
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
        }
    }
}

#Preview {
    TweetRowView()
}
