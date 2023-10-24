//
//  LoginView.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 09/04/1445 AH.
//

import SwiftUI

struct LogInView: View {
    var body: some View {
            LogInBodyView()
    }
}

#Preview {
    LogInView()
}

private struct LogInBodyView: View {
    @State var emailTextField: String = ""
    @State var passwordTextField: String = ""
    
    var body: some View {
        VStack{
            
            MainTextField(textFieldPlaceHolder: "Enter your email",
                          iconName: "envelope",
                          isSecure: false,
                          text: $emailTextField)
            .padding(.vertical)
            
            MainTextField(textFieldPlaceHolder: "Enter your password",
                          iconName: "lock",
                          isSecure: true,
                          text: $passwordTextField)
            
            HStack {
                Spacer()
                Button("Forgot Password?"){
                    
                }
                .foregroundStyle(Color("primaryAppColor"))
            }//:HStack
            .padding(.bottom,28)
            
            
            Button(action: {
            }){
                Text("Login")
            }
            .frame(width:360,height: 50)
            .background(Color("primaryAppColor"))
            .foregroundColor(.white )
            .cornerRadius(32)
            .padding(.bottom)
            
            HStack{
                Text("Don't hava an account?")
                    .foregroundStyle(.gray)
                Button("Sign up"){
                }
                .foregroundStyle(Color("primaryAppColor"))
            }//:HStack
            
            //Divider
            DividerWith(text: "OR")
                .padding(.vertical)
            
            
            ButtonWithIcon(iconName: "GoogleLogo", text: "Sign in with Google") {
                
            }
            .padding(.bottom)
            
            ButtonWithIcon(iconName: "AppleLogo", text: "Sign in with Apple") {
                
            }
            .padding(.bottom)
            
            ButtonWithIcon(iconName: "FacebookLogo", text: "Sign in with Facebook") {
                
            }
            .padding(.bottom)
            
            
            
        }//:VStack
        .padding(.horizontal)
        
       
    }
}


