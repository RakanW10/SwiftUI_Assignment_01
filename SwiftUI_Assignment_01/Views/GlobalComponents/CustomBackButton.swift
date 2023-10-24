//
//  CustomBackButton.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 09/04/1445 AH.
//

import SwiftUI

struct CustomBackButton: View {
    @Binding var path: [String]
    var body: some View {
        Button(action: {
            path.remove(at:path.count - 1)
        }) {
            Image(systemName: "chevron.left")
                .foregroundColor(.black)
        }
    }
}
