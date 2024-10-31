//
//  NewItemView.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 31.10.2024.
//

import SwiftUI

struct NewItemView: View {
    @Binding var newItemPressed: Bool
    @StateObject var viewModel = NewItemViewViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text("New Item")
                    .font(.system(size: 42))
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                Spacer()
            }
            
            VStack(alignment: .center) {
                //Title
                TextField("Title", text: $viewModel.title)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                    .autocapitalization(.none)
                //Date
                DatePicker("Date", selection: $viewModel.date)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .tint(Color.theme.textColor)
                //Button
                Button {
                    viewModel.save()
                    newItemPressed = false
                } label: {
                    Text("Save")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.theme.buttonTextColor)
                        .frame(width: 315, height: 44)
                        .background(Color.theme.backgroundColor)
                        .cornerRadius(10)
                        .padding()
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    NewItemView(newItemPressed: Binding.constant(false))
}
