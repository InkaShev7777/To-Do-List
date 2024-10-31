//
//  FillReminderLabel.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 31.10.2024.
//

import SwiftUI

struct FillReminderLabel: View {
    var body: some View {
        Circle()
            .stroke(.primary, lineWidth: 2)
            .overlay(alignment: .center) {
                GeometryReader { geo in
                    VStack {
                        Circle()
                            .fill(.primary)
                            .frame(width: geo.size.width*0.7, height: geo.size.height*0.7, alignment: .center)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            .frame(width: 20, height: 20)
    }
}

#Preview {
    FillReminderLabel()
}
