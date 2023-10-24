//
//  MainTextField.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 09/04/1445 AH.
//

import SwiftUI

struct MainTextField: View {
    let textFieldPlaceHolder: String
    let iconName: String
    let isSecure: Bool
    @Binding var text: String
    
    var body: some View {
        HStack{
            Image(systemName: iconName)
                .resizable()
                .foregroundStyle(.gray)
                .frame(width: 25, height: 20)
                .padding(.horizontal, 8)
                .aspectRatio(contentMode: .fill)
            
            Group{
                if isSecure{
                    SecureField(textFieldPlaceHolder, text: $text)
                }else{
                    TextField(textFieldPlaceHolder, text: $text)
                }
            }
            .frame(height: 40)
            
            if isSecure{
                Image(systemName: "eye.slash")
                    .resizable()
                    .foregroundStyle(.gray)
                    .frame(width: 25, height: 20)
                    .padding(.horizontal, 8)
                    .aspectRatio(contentMode: .fill)
            }
            
        }.padding(8)
            .background(
                RoundedRectangle(cornerRadius: 32)
                    .stroke(Color.gray.opacity(0.2))
                    .background(.gray.opacity(0.05))
                    .cornerRadius(32)
                
            )
    }
}


