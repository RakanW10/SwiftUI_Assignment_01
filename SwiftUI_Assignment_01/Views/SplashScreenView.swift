//
//  ContentView.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 07/04/1445 AH.
//

import SwiftUI

struct SplashScreenView: View{
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View{
        if self.isActive{
            MainView()
        }
        else{
            ZStack{
                Color("primaryAppColor")
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        Image(systemName: "swift")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding([.horizontal], 100)
                        
                        Text("معسكر Swift")
                            .bold()
                            .font(.system(size: 60))
                    }//: VStack1
                    .foregroundColor(Color("mainText"))
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.0)){
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                } //: VStack0
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
            } //: ZStack
        }
    }
}

#Preview {
    SplashScreenView()
}
