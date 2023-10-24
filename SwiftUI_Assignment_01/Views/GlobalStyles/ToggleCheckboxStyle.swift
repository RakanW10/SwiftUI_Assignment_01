//
//  ToggleCheckboxStyle.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 09/04/1445 AH.
//

import SwiftUI

struct ToggleCheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button{
            configuration.isOn.toggle()
        }label: {
            Image(systemName: configuration.isOn ? "checkmark.square.fill" :  "square")
                .resizable()
        }
    }
    
}

