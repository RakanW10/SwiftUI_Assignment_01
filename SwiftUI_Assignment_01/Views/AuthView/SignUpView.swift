//
//  SignUpView.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 09/04/1445 AH.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        SignUpBody()
    }
}

#Preview {
    SignUpView()
}

private struct SignUpBody: View {
    @State var nameTextField: String = ""
    @State var emailTextField: String = ""
    @State var passwordTextField: String = ""
    @State var isCheckBoxSelected: Bool = false
    
    var body: some View {
        VStack{
           
            MainTextField(textFieldPlaceHolder: "Enter your name",
                          iconName: "person",
                          isSecure: false,
                          text: $nameTextField)
            .padding(.vertical)
            
            MainTextField(textFieldPlaceHolder: "Enter your email",
                          iconName: "envelope",
                          isSecure: false,
                          text: $emailTextField)
            .padding(.bottom)
            
            MainTextField(textFieldPlaceHolder: "Enter your password",
                          iconName: "lock",
                          isSecure: true,
                          text: $passwordTextField)
            .padding(.bottom)
            
            HStack{
                CheckBox(isOn: $isCheckBoxSelected)
                Text("I agree to the medidoc ")
                + Text("Terms of Service ")
                    .foregroundColor(Color("primaryAppColor"))
                + Text("and ")
                + Text("Privacy")
                    .foregroundColor(Color("primaryAppColor"))
            }.padding(.bottom)
            
            Button(action: {
            }){
                Text("Sign Up")
            }
            .frame(width:360,height: 50)
            .background(Color("primaryAppColor"))
            .foregroundColor(.white )
            .cornerRadius(32)
            .padding(.bottom)
            
            Spacer()
        }//:VStack
        .padding(.horizontal)
        
    
        
        
    }
}


