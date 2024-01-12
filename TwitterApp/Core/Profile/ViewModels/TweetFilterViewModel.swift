//
//  TweetFilterViewModel.swift
//  TwitterApp
//
//  Created by Jai  on 12/01/24.
//

import Foundation
enum TweetFilterViewModel: Int, CaseIterable {
    case posts
    case replies
    case highlights
    case media
    case likes
    
    var title:String {
        switch self {
        case .posts:return "Posts"
        case .replies: return "Replies"
        case .highlights : return "Highlights"
        case .media : return "Media"
        case .likes : return "Likes"
            
        
            
        }
    }
}
