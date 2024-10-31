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
    
    init() { }
    
    func save() {
        print("DEBUG: Save button was presed.")
    }
}
