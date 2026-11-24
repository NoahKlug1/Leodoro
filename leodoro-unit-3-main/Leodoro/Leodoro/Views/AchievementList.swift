//
//  AchievementView.swift
//  Leodoro
//
//  Created by Sarah Steininger on 01.09.25.
//

import SwiftUI

struct AchievementList: View {
    var body: some View {
        NavigationView{
            ZStack {
                List(achievements) { achievment in
                    NavigationLink{
                        AchievementDetailView(achievment: achievment)
                    } label: {
                        AchievementRow(achievement: achievment)
                    }.listRowBackground(Color.clear)
                     .listRowSeparator(.hidden)
                }
                
            }.scrollContentBackground(.hidden).background(LinearGradient(gradient: .init(colors: [Color(.pomodoroGreen), Color(.white)]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
        }
    }
}

#Preview {
    AchievementList()
}
