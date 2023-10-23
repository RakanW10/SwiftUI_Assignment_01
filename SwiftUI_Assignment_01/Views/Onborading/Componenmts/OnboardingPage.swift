//
//  OnboardingPage.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 08/04/1445 AH.
//

import SwiftUI

struct OnboardingPage: View {
    let text: String
    let imageSourceName: String
    let activeIndex: Int
    @Binding var shouldShowOnboarding: Bool
    var body: some View {
        VStack{
            HStack(){
                Spacer()
                Button("Skip") {
                    shouldShowOnboarding.toggle()
                }
                .foregroundColor(.gray)
            }//: HStack
            .frame(alignment: .trailing)
            
            Image(imageSourceName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, -8.0)
            
            BottonCard(text: text, activeIndex: activeIndex)
        }//: VStack
        .padding(16)
    }
}

