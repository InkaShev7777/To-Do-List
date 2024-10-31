//
//  LoginViewViewModel.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 29.10.2024.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {
    }
    
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
