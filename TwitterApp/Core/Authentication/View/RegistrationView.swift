//
//  RegistrationionView.swift
//  TwitterApp
//
//  Created by Jai  on 14/01/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname  = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel:AuthViewModel
    
    var body: some View {
        NavigationView {
            VStack{
                AuthHeaderView(title1: "Get Started.", title2: "Create Your Account")
                VStack(spacing: 40){
                    /// Email
                    CustomInputField(imageName: "envelope",
                                     placeHolderText: "Email",
                                     text: $email)
                    
                    ///Username
                    CustomInputField(imageName: "person",
                                     placeHolderText: "Username",
                                     text: $username)
                    
                    ///FullName
                    CustomInputField(imageName: "person",
                                     placeHolderText: "Fullname",
                                     text: $fullname)
                    /// Password
                    
                    CustomInputField(imageName: "lock",
                                     placeHolderText: "Password",
                                     isSecureField: true,
                                     text: $password)
                }
                
                .padding(32)
                
                // SignUp Button
                Button {
                    viewModel.register(withEmail: email,
                                       password: password,
                                       fullName: fullname,
                                       username: username )
                } label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray.opacity(0.5), radius: 10 , x:0 , y:0)
                Spacer()
                
                
                // Footer
                Button{
                    presentationMode.wrappedValue.dismiss()
                    
                }
            label:{
                HStack{
                    Text("Already Have An Account")
                        .font(.footnote)
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
            }
            .padding(.bottom, 32)
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    RegistrationView()
}
