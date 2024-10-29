//
//  TodayView.swift
//  To Do List
//
//  Created by Ilya Schevchenko on 29.10.2024.
//

import SwiftUI

struct TodayView: View {
    
    var filledReminderLabel: some View {
        Circle()
            .stroke(.primary, lineWidth: 2)
            .overlay(alignment: .center) {
                GeometryReader { geo in
                    VStack {
                        Circle()
                            .fill(.primary)
                            .frame(width: geo.size.width*0.7, height: geo.size.height*0.7, alignment: .center)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
    }
    
    var emptyReminderLabel: some View {
        Circle()
            .stroke(.secondary)
    }
    
    var body: some View {
        VStack {
            HStack {
                //Header
                Text("Today")
                    .fontWeight(.bold)
                    .font(.system(size: 45))
                
                Spacer()
                
                VStack {
                    Text("10")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 0)
                    Text("Oct")
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
                                    filledReminderLabel
                                        .frame(width: 20, height: 20)
                                } else {
                                    emptyReminderLabel
                                        .frame(width: 20, height: 20)
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
                
                PlusButtonView()
            }
        }
        .padding()
    }
}

#Preview {
    TodayView()
}
