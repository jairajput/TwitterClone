//
//  ExploreView.swift
//  TwitterApp
//
//  Created by Jai  on 12/01/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        VStack{
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 25 , id: <#T##KeyPath<ClosedRange<Int>.Element, ID>#>)
                }
            }
        }  
    }
}

#Preview {
    ExploreView()
}
