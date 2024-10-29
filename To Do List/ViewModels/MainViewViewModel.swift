//
//  MainViewViewModel.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 29.10.2024.
//

import Foundation
import FirebaseAuth

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var hendler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.hendler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
