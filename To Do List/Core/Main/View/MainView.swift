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
            mainView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var mainView: some View {
        TabView {
            TodayView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Today", systemImage: "checkmark.square.fill")
                }
            
            UpcomingView()
                .tabItem {
                    Label("Upcoming", systemImage: "calendar")
                }
            
            InboxView()
                .tabItem {
                    Label("Inbox", systemImage: "tray")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        .tint(Color.theme.textColor)
    }
}

#Preview {
    MainView() 
}
