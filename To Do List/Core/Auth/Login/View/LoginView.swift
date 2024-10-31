//
//  LoginView.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 29.10.2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    let buttonColor = UIColor(named: "ButtonsColorSet")
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                VStack {
                    Text("To Do List")
                        .fontWeight(.semibold)
                        .font(.system(size: 50))
                    
                    Text("Get this done")
                        .fontWeight(.regular)
                        .font(.system(size: 20))
                }
                .padding(.top, 40)
                 
                // Login form
                VStack(alignment: .center) {
                    TextField("Email Address", text: $viewModel.email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                        .autocapitalization(.none)
                    
                    // Error Message
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(Color(.red))
                            .font(.footnote)
                    }
                    
                    Button {
                        Task{ try await viewModel.login()}
                    } label: {
                        Text("Log In")
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
                
                //Create Account
                VStack(alignment: .center) {
                    NavigationLink("Create Account", destination: RegistrationView())
                        .font(.footnote)
                        .foregroundStyle(Color.theme.textColor)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
