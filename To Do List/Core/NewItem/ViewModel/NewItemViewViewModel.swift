//
//  NewItemViewViewModel.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 31.10.2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var date = Date()
    
    @Published var showAlert = false
    
    init() { }
    
    func save() {
        guard canSave else {
            return
        }
        
        //Get current user id
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        //Create model
        let newId = UUID().uuidString
        let newItem = ToDoListItem(
            id: newId,
            title: self.title,
            date: self.date.timeIntervalSince1970,
            createDate: Date().timeIntervalSince1970,
            isDone: false
        )
        //Save model
        let db = Firestore.firestore()
        
        
        db.collection("users")
            .document(uId)
            .collection("dotos")
            .document(newId)
            .setData(newItem.asDictionary())
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
