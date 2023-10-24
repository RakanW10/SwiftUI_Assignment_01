//
//  ButtonWithIcon.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 09/04/1445 AH.
//

import SwiftUI

struct ButtonWithIcon: View {
    let iconName: String
    let text: String
    let action: () -> Void
    var body: some View{
        HStack {
            Image(iconName)
                .resizable()
                .frame(width: 24,height: 24)
                .padding(.horizontal)
                
            Spacer()
            Button(action: action){
                Text(text)
                    .bold()
            }.padding(.trailing,64)
            Spacer()
        }
        .frame(width:360,height: 50)
        .foregroundColor(.black)
        .cornerRadius(32)
        .background(
            RoundedRectangle(cornerRadius: 32)
                .stroke(Color.gray.opacity(0.2))
        )
    }
}
