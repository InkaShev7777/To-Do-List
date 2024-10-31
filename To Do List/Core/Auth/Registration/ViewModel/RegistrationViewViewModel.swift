//
//  RegistrationViewViewModel.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 29.10.2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

@MainActor
class RegistrationViewViewModel: ObservableObject {
    @Published var fullName = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func registrate() async throws {
        
        try await AuthService.shared.createUser(email: email, password: password, username: fullName)
        
        email = ""
        password = ""
        fullName = ""
    }
}
