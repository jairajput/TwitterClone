//
//  NewTweetView.swift
//  TwitterApp
//
//  Created by Jai  on 13/01/24.
//

import SwiftUI

struct NewTweetView: View {
    var body: some View {
        VStack{
            HStack{
                Button {
                    print("Dismiss")
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                Spacer()
                Button {
                    print("Tweet")
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(.capsule)
                }

            }
            .padding()
            HStack{
                Circle()
                    .frame(width: 64, height: 64)
            }
        }
    }
}

#Preview {
    NewTweetView()
}
