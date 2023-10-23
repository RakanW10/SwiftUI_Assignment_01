//
//  MainView.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 07/04/1445 AH.
//

import SwiftUI

struct MainView: View {
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    var body: some View {
        NavigationView{
            VStack{
                Image(systemName: "swift")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .foregroundColor(Color("primaryAppColor"))
                
                Text("معسكر Swift")
                    .bold()
                    .font(.title)
                    .foregroundColor(Color("primaryAppColor"))
                    .padding(.bottom, 16)
                
                Text("Let's get started!")
                    .bold()
                    .font(.title)
                    .padding(.bottom, 6)
                
                
                Text("Login to enjoy the features we've provided, and stay healthy!")
                    .font(.headline)
                    .padding(.bottom, 8)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                    .foregroundColor(.gray)
                
                MainButton(title: "Login", isFilled: true){
                    
                }
                .padding(.bottom, 8)
                
                MainButton(title: "Sign up", isFilled: false){
                    
                }
            }//: VStack1
        }//: NavigationView
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })
    }
}

#Preview {
    MainView(shouldShowOnboarding: false)
}
