//
//  LoginView.swift
//  TwitterApp
//
//  Created by Jai  on 14/01/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var passsword = ""
    var body: some View {
        VStack{
            VStack(alignment:.leading){
                HStack{Spacer()}
                Text("Hello")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
            
            
            VStack(spacing: 40){
            CustomInputField(imageName: "envelope", placeHolderText: "Email", text: $email)
                CustomInputField(imageName: "lock", placeHolderText: "Password", text: $passsword)
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
                print("Sign In here")
            } label: {
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
                RegistrationionView()
                    .navigationBarHidden(true)
            }label: {
                HStack {
                    Text("Dont have an Account?")
                        .font(.footnote)
                    Text("Signup")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                    
            }
            .foregroundColor(Color(.systemBlue))
            .padding(.bottom , 32)
            
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

#Preview {
    LoginView()
}
