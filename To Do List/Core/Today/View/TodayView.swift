//
//  TodayView.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 29.10.2024.
//

import SwiftUI

struct TodayView: View {
    @StateObject var viewModel = TodayViewViewModel()
    @State var todayDate = TodayDate()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    //Header
                    Text("Today")
                        .fontWeight(.bold)
                        .font(.system(size: 45))
                    
                    Spacer()
                    
                    VStack {
                        Text(todayDate.day)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 0)
                        Text(todayDate.month)
                            .foregroundStyle(Color(.lightGray))
                            .padding(.top, 0)
                    }
                }
                
                //To Do List
                ZStack {
                    ScrollView {
                        VStack(alignment: .leading) {
                            ForEach(0 ..< 15, id: \.self) { item in
                                HStack(alignment: .center) {
                                    if( item % 2 == 0) {
                                        FillReminderLabel()
                                    } else {
                                        EmptyReminderLabel()
                                    }
                                    
                                    Text("Task To Do List item #\(item+1)")
                                        .fontWeight(.semibold)
                                }
                                .padding(.horizontal, 3)
                                .frame(height: 40)
                                
                                Divider()
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                    
                    PlusButtonView(action: viewModel.toggleShowItemView)
                }
            }
            .padding()
        }
        .sheet(isPresented: $viewModel.showNewItemView, content: {
            NewItemView(newItemPressed: $viewModel.showNewItemView )
        })
    }
}

#Preview {
    TodayView(userId: "")
}
