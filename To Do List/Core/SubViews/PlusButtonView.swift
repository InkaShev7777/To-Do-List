//
//  PlusButtonView.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 29.10.2024.
//

import SwiftUI

struct PlusButtonView: View {
    
    var action: () -> Void
    
    var body: some View {
        
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button {
                    action()
                } label: {
                    Image(systemName: "plus")
                        .font(.system(size: 24))
                        .foregroundColor(Color.theme.buttonTextColor)
                        .padding()
                        .background(Color.theme.backgroundColor)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                }
            }
        }
        .padding(.horizontal, 2)
    }
}

//#Preview {
//    PlusButtonView(action:  ())
//}
