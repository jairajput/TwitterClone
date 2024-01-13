//
//  ContentView.swift
//  TwitterApp
//
//  Created by Jai  on 01/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading) {
                MainTabView()
                    .navigationBarHidden(showMenu)
                if showMenu{
                    ZStack{
                        Color(.black)
                            .opacity(0.25)
                    }
                    .onTapGesture {
                        withAnimation(.easeInOut){
                            showMenu = false
                        }
                    }
                    .ignoresSafeArea()
                }
                
                SideMenuView()
                    .frame(width: 300)
                    .offset(x:showMenu ? 0 : -300, y:0)
                
                    .background(showMenu ? Color.white: Color.clear)
                    
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button{
                        withAnimation(.easeInOut){
                            showMenu.toggle()
                        }
                    }
                label:{
                    Circle()
                        .frame(width: 32, height: 32)
                    
                }
                }
            }
            .onAppear{
                showMenu = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
