//
//  OnbroardingView.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 08/04/1445 AH.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var shouldShowOnboarding: Bool
    var body: some View {
        TabView{
            OnboardingPage(text: "Consult only with a doctor you trust",
                           imageSourceName: "Doctor1",
                           activeIndex: 0,
                           shouldShowOnboarding: $shouldShowOnboarding)
            
            OnboardingPage(text: "Find a lot of specialist doctors in one place",
                           imageSourceName: "Doctor2",
                           activeIndex: 1,
                           shouldShowOnboarding: $shouldShowOnboarding)
            
            OnboardingPage(text: "Get connect our Online Consultation",
                           imageSourceName: "Doctor3",
                           activeIndex: 2,
                            shouldShowOnboarding: $shouldShowOnboarding)
        }
        .tabViewStyle(PageTabViewStyle())
        
    }
}

