//
//  ToDoListItem.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 31.10.2024.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let date: TimeInterval
    let createDate: TimeInterval
    var isDone: Bool
    
    mutating func setIsDone(_ state: Bool) {
        isDone = state
    }
}
