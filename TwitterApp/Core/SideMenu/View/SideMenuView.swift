//
//  SideMenuView.swift
//  TwitterApp
//
//  Created by Jai  on 13/01/24.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
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
        }
    }
}

#Preview {
    SideMenuView()
}
