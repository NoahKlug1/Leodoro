//
//  ContentView.swift
//  Leodoro
//
//  Created by Sarah Steininger on 01.09.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            AchievementList()
                .tabItem {
                    Label("Achievements", systemImage: "star")
                }
            InfoView()
                .tabItem {
                    Label("Info", systemImage: "info")
                }
        }
    }
}

#Preview {
    ContentView()
}
