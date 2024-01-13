//
//  SideMenuViewModel.swift
//  TwitterApp
//
//  Created by Jai  on 13/01/24.
//

import Foundation


enum SideMenuViewModel: Int, CaseIterable{
    case profile
    case premimum
    case bookmarks
    case list
    case spaces
    case monteisation
    case logout
    
    
    var description: String{
        switch self{
        case .profile: return "Profile"
        case .premimum: return "Premimum"
        case .bookmarks: return  "Bookmarks"
        case .list: return "List"
        case .spaces:return  "Spaces"
        case .monteisation:return "Monteisation"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String{
        switch self{
        case .profile:  return "person"
        case .premimum : return "x.square.fill"
        case .bookmarks: return "bookmark"
        case .list: return "list.bullet"
        case .spaces:return "mic"
        case .monteisation:return "rectangle.on.rectangle"
        case .logout: return "arrow.left.square"
        }
    }
}
