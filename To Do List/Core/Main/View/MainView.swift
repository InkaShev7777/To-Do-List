//
//  MainView.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 29.10.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
//        if AuthService.shared.userSession != nil {
//            HomeView()
//        } else {
//            LoginView()
//        }
        HomeView()
    }
}

#Preview {
    MainView() 
}
