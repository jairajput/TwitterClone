//
//  UserStatsView.swift
//  TwitterApp
//
//  Created by Jai  on 13/01/24.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 32){
            HStack(spacing: 2) {
                Text("807 " )
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
                                
            }
            HStack{
                Text("801 " )
                    .font(.subheadline)
                    .bold()

                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)


                
            }
        }
        
    }
}

#Preview {
    UserStatsView()
}
