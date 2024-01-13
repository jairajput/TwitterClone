//
//  FeedView.swift
//  TwitterApp
//
//  Created by Jai  on 01/01/24.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                LazyVStack{
                    ForEach(0...20, id: \.self) { _ in
                        TweetRowView()
                            .padding()
                    }
                }
            }
            Button {
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 48, height: 48)
                    .padding()
                
            }
            .fullScreenCover(isPresented: $showNewTweetView) {
                Text ("New Tweet")
            }
            

        }
    }
}

#Preview {
    FeedView()
}
