//
//  DividerWith.swift
//  SwiftUI_Assignment_01
//
//  Created by Rakan Alotaibi on 09/04/1445 AH.
//

import SwiftUI

struct DividerWith: View {
    let text: String
    var body: some View {
        HStack{
            Rectangle()
                .frame(width: .infinity,height: 1)
        Text(text)
                .foregroundStyle(.gray)
            Rectangle()
                .frame(width: .infinity,height: 1)
        }//HStack
        .foregroundStyle(.gray.opacity(0.3))
    }
}

#Preview {
    DividerWith(text: "OR")
}
