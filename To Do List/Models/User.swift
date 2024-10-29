//
//  User.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 29.10.2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
