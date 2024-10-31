//
//  TodayViewViewModel.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 31.10.2024.
//

import Foundation

class TodayViewViewModel: ObservableObject {
    @Published var showNewItemView = false
    
    init() { }
    
    func toggleShowItemView() -> Void{
        showNewItemView.toggle()
    }
}
