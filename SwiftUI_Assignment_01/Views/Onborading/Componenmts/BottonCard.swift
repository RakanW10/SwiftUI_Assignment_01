//
//  BottonCard.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 08/04/1445 AH.
//

import SwiftUI

struct BottonCard: View {
    let text: String
    let activeIndex: Int
    
    var body: some View {
        ZStack{
            VStack(){
                
                Text(text)
                    .bold()
                    .font(.title)
                    .padding(.top, 32)
                HStack{
                    Rectangle()
                        .frame(width: 16, height: 6)
                        .cornerRadius(6)
                        .foregroundColor(Color("primaryAppColor"))
                        .opacity(activeIndex == 0 ? 1.0 : 0.3)
                    Rectangle()
                        .frame(width: 16, height: 6)
                        .cornerRadius(6)
                        .foregroundColor(Color("primaryAppColor"))
                        .opacity(activeIndex == 1 ? 1.0 : 0.3)
                    Rectangle()
                        .frame(width: 16, height: 6)
                        .foregroundColor(Color("primaryAppColor"))
                        .cornerRadius(6)
                        .opacity(activeIndex == 2 ? 1.0 : 0.3)
                    
                    Spacer()
                    
                    Button(action: {
                        print("Next")
                    }){
                        Image(systemName: "arrow.forward")
                        
                            .frame(width: 60, height: 60)
                            .background(Color("primaryAppColor"))
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                    
                }//: HStack
                .padding(8)
            }//: VStack
        } //: ZStack
        .frame(height: 250)
        .background(LinearGradient(gradient: Gradient(colors: [Color("secondaryAppColor"), .clear]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)

    }
}


#Preview {
    BottonCard(text: "Bla Bla", activeIndex:0)
}
