//
//  ProfileView.swift
//  TwitterApp
//
//  Created by Jai  on 12/01/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading){
            headerView
            actionButtons
            userInfoDetails
            
            
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}


extension ProfileView{
    var headerView: some View {
        ZStack(alignment: .bottomLeading)
        {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            
            VStack {
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20 , height: 20)
                        .foregroundColor(.white)
                        .offset(x:16, y:12)
                    
                }
                
                Circle()
                    .frame(width: 72 , height: 72)
                .offset(x:16 , y:27)
            }
        }
        .frame(height: 97)

    }
    var actionButtons: some View {
        HStack(spacing:12){
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray,lineWidth:0.75))
            
            Button{
                
            } label: {
                Text("Edit profile")
                    .font(.subheadline).bold()
                    .frame(width: 120 , height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray,lineWidth: 0.75))

                
            }
        }
        .padding(.trailing)
    }
    
    var userInfoDetails: some View{
        VStack(alignment: .leading , spacing: 4){
            HStack {
                Text("Heath Ledger")
                    .font(.title2).bold()
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
                }
            
            Text("@joker")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Your Moms Favourite Villan")
                .font(.subheadline)
                .padding(.vertical)
            
            
            HStack(spacing: 32){
                HStack(spacing: 2) {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Gotham Ny")
                                    
                }
                HStack{
                    Image(systemName: "link")
                    Text("www.joker.com")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            
            HStack(spacing: 32){
                HStack(spacing: 2) {
                    Text("807 " )
                        .font(.subheadline)
                        .bold()
                    
                    Text("Following")
                        .font(.caption)
                        .foregroundColor(.gray)
                                    
                }
                HStack{
                    Text("801 " )
                        .font(.subheadline)
                        .bold()

                    Text("Followers")
                        .font(.caption)
                        .foregroundColor(.gray)


                    
                }
            }
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
}
