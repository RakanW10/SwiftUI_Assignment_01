//
//  MainBotton.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 08/04/1445 AH.
//

import SwiftUI

struct MainButton: View {
    let title: String
    let isFilled: Bool
    let action: () -> Void
    var body: some View {
        Button(action: action){
            Text(title)
                .frame(width: 250, height: 50)
                .background(isFilled ? Color("primaryAppColor") : .clear)
                .foregroundColor(isFilled ? .white : Color("primaryAppColor"))
                .cornerRadius(32)
                .overlay(
                    RoundedRectangle(cornerRadius: 32)
                        .stroke(isFilled ? .white : Color("primaryAppColor")  , lineWidth: 1)
                )
                
            
        }
    }
    
}

#Preview {
    MainButton(title: "Login", isFilled: true){
        print("test")
    }
}
