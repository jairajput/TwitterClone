//
//  UserRowView.swift
//  TwitterApp
//
//  Created by Jai  on 12/01/24.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing:12){
            Circle()
                .frame(width: 48 , height: 48)
            VStack(alignment: .leading, spacing: 4){
                Text("joker")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                Text("Heath Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                

            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical , 4)
    }
}

#Preview {
    UserRowView()
}
