//
//  EmptyReminderLabel.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 31.10.2024.
//

import SwiftUI

struct EmptyReminderLabel: View {
    var body: some View {
        Circle()
            .stroke(.secondary)
            .frame(width: 20, height: 20)
    }
}

#Preview {
    EmptyReminderLabel()
}
