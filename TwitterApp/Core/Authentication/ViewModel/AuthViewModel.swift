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
        print("User Session is \(self.userSession)")
    }
    
    func login(withEmail email:String , Password:String){
        print("Debug login with email\(email)")
    }
    func register(withEmail email: String , password:String, fullName:String, username:String){
        print("Debug register with email\(email)")
    }
}
