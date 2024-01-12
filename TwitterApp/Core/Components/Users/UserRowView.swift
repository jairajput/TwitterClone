//
//  UserRowView.swift
//  TwitterApp
//
//  Created by Jai  on 12/01/24.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 48 , height: 48)
            VStack(alignment: .leading, spacing: 4){
                Text("joker")
                    .font(.subheadline).bold()
                Text("Heath Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                

            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    UserRowView()
}
