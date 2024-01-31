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
        print("User Session is \(self.userSession?.uid )")
    }
    
    func login(withEmail email:String , Password:String){
        Auth.auth().signIn(withEmail: email, password: Password){ result , error in
            if let error = error{
                print("Debug: Failed to SignIn with error\(error.localizedDescription)")
                return
            }
            guard let user = result?.user else {return}
            self.userSession = user
            print("Debug: Did Log User in...")
        }
    }
    func register(withEmail email: String , password:String, fullName:String, username:String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error
            in
            if let error = error{
                print("Debug: Failed to Register with error\(error.localizedDescription)")
                return
            }
            guard let user = result?.user else {return}
            self.userSession = user
            
            print("Registerd User Successfully")
            print("Debug user is \(self.userSession)")
            
            let data = ["email":email,
                        "username":username.lowercased(),
                        "fullname":fullName,
                        "uid":user.uid]
            
            Firestore.firestore().collection("user").document(user.uid)
                .setData(data){ _ in
                    
                    print("Debug: Did Upload User Data")
                }
            
        }
        
    }
    func signOut() {
        userSession = nil
        try? Auth.auth().signOut()
    }
}
