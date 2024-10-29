//
//  MainView.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 29.10.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignIn, !viewModel.currentUserId.isEmpty {
            TabView {
                TodayView()
                    .tabItem {
                        Label("Today", systemImage: "checkmark.square.fill")
                    }
                    
            }
            .foregroundStyle(Color.theme.textColor)
        } else {
            LoginView()
        }
        
    }
}

#Preview {
    MainView() 
}
