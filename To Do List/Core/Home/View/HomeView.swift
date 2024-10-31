//
//  HomeView.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 31.10.2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
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
    HomeView()
}
