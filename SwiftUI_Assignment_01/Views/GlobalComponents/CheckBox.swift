//
//  CheckBox.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 09/04/1445 AH.
//

import SwiftUI

struct CheckBox: View {
    @Binding var isOn: Bool
    var body: some View {
        Toggle("", isOn: $isOn)
            .toggleStyle(ToggleCheckboxStyle())
            .foregroundStyle(Color("primaryAppColor"))
            .frame(width: 20 ,height: 20)
    }
}
