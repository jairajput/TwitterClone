//
//  SideMenuView.swift
//  TwitterApp
//
//  Created by Jai  on 13/01/24.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 48 , height: 48)
                VStack(alignment: .leading , spacing: 4){
                    Text("Bruce Wayne")
                        .font(.headline)
                    
                    Text("@batman")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    
                }
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            ForEach(SideMenuViewModel.allCases, id: \.rawValue){ option in
                HStack(spacing:4){
                    Image(systemName: option.imageName)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                   
                    
                    Text(option.title)
                        .font(.subheadline)
                    
                    Spacer()
                }
                .frame(height: 40)
                .padding(.horizontal)
                
            }
            
            Spacer()
        }
        
    }
}

#Preview {
    SideMenuView()
}
