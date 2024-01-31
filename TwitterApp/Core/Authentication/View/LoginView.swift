//
//  LoginView.swift
//  TwitterApp
//
//  Created by Jai  on 14/01/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel:AuthViewModel
    var body: some View {
        
        NavigationView {
            VStack{
                AuthHeaderView(title1: "Hello", title2: "Welcome Back")
                
                
                VStack(spacing: 40){
                CustomInputField(imageName: "envelope", placeHolderText: "Email", text: $email)
                    CustomInputField(imageName: "lock", placeHolderText: "Password",
                                     isSecureField: true,
                                     text: $password)
            }
                .padding(.horizontal,32)
                .padding(.top, 44)
                
                
                HStack{
                    Spacer()
                    NavigationLink{
                        Text("Reset Password")
                    } label: {
                        Text("Forgot Password")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(Color(.systemBlue))
                            .padding(.top)
                            .padding(.trailing , 24)
                    }
                }
                Button {
                    viewModel.login(withEmail: email, Password: password)                } label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray.opacity(0.5), radius: 10 , x:0 , y:0)
                
                Spacer()
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarHidden(true)
                    
                } label: {
                    HStack{
                        Text("Dont Have An Account?")
                            .font(.footnote)
                        
                        Text("Sign Up")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                    }
                }
                .padding(.bottom, 32)
                .foregroundColor(Color(.systemBlue))
            }
            .ignoresSafeArea()
        .navigationBarHidden(true)
        }

    }
}

#Preview {
    LoginView()
}
