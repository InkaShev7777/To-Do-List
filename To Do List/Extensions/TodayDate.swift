//
//  TodayDate.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 31.10.2024.
//

import Foundation

struct TodayDate {
    var day = ""
    var month = ""
    
    init() {
        GetTodayDate()
    }
    
    private mutating func GetTodayDate() {
        let today = Date()
        
        let monthFormatter = DateFormatter()
        monthFormatter.dateFormat = "MMM"
        month = monthFormatter.string(from: today)
        
        let dayFormatter = DateFormatter()
        dayFormatter.dateFormat = "d"
        day = dayFormatter.string(from: today)
    }
}
