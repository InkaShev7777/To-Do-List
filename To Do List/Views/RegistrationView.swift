//
//  RegistrationView.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 29.10.2024.
//

import SwiftUI

struct RegistrationView: View {
    @State var email = ""
    @State var password = ""
    @State var fullName = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                VStack {
                    Text("To Do List")
                        .fontWeight(.semibold)
                        .font(.system(size: 50))
                    
                    Text("Start organizing todos")
                        .fontWeight(.regular)
                        .font(.system(size: 20))
                }
                .padding(.top, 40)
                
                // Registration form
                VStack(alignment: .center) {
                    TextField("Full Name", text: $fullName)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                        .autocapitalization(.none)
                    
                    TextField("Email Address", text: $email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                        .autocapitalization(.none)
                    
                    Button {
                        print("DEBUG: Login Button was presed")
                    } label: {
                        Text("Create Account")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.theme.buttonTextColor)
                            .frame(width: 315, height: 44)
                            .background(Color.theme.backgroundColor)
                            .cornerRadius(10)
                            .padding()
                    }
                }
                .padding()
            }
        }
        
    }
}

#Preview {
    RegistrationView()
}
