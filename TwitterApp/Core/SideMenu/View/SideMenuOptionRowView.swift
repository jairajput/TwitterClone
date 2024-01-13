//
//  SideMenuOptionRowView.swift
//  TwitterApp
//
//  Created by Jai  on 13/01/24.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    let viewModel: SideMenuViewModel
    var body: some View {
        HStack(spacing:4){
            Image(systemName: viewModel.imageName)
                .font(.subheadline)
                .foregroundColor(.gray)
           
            
            Text(viewModel.title)
                .font(.subheadline)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)    }
}

#Preview {
    SideMenuOptionRowView(viewModel: .profile)
}
