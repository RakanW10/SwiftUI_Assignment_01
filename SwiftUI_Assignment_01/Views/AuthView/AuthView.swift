//
//  MainView.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 07/04/1445 AH.
//

import SwiftUI

struct AuthView: View {
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    @State private var path = [String]()
    var body: some View {
        NavigationStack(path: $path){
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
                    path.append("LoginView")
                }
                .padding(.bottom, 8)
                
                MainButton(title: "Sign up", isFilled: false){
                    path.append("SignUpView")
                    
                }
            }//: VStack1
            .navigationDestination(for: String.self, destination: { stringKey in
                switch stringKey {
                case "LoginView":
                    LogInView()
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarBackButtonHidden(true)
                        .toolbar(content: {
                            ToolbarItem(placement: .principal) {
                                Text("Login")
                                    .bold()
                            }
                            ToolbarItem(placement: .navigationBarLeading) {
                                CustomBackButton(path: $path)
                            }
                        }
                        )
                case "SignUpView":
                    SignUpView()
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarBackButtonHidden(true)
                        .toolbar(content: {
                            ToolbarItem(placement: .principal) {
                                Text("Sign Up")
                                    .bold()
                            }
                            ToolbarItem(placement: .navigationBarLeading) {
                                CustomBackButton(path: $path)
                            }
                        }
                        )
                default:
                    Text("Error")
                }
            })
        }//: NavigationStack
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })
        
    }
}

#Preview {
    AuthView(shouldShowOnboarding: false)
}
