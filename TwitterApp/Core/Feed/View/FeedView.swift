//
//  FeedView.swift
//  TwitterApp
//
//  Created by Jai  on 01/01/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0...20, id: \.self) { _ in
                    TweetRowView()
                        .padding()
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
