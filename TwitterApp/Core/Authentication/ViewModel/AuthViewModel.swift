//
//  AuthViewModel.swift
//  TwitterApp
//
//  Created by Jai  on 23/01/24.
//

import SwiftUI
import Firebase
class AuthViewModel:ObservableObject {
    @Published var  userSession : FirebaseAuth.User?
    init(){
        self.userSession = Auth.auth().currentUser
    }
}
