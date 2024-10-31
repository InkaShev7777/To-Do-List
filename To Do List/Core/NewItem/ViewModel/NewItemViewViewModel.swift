//
//  NewItemViewViewModel.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 31.10.2024.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var date = Date()
    
    @Published var showAlert = false
    
    init() { }
    
    func save() {
        print("DEBUG: Save button was presed. Success")
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard date >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
    
    
}
