//
//  AchievementDetailView.swift
//  Leodoro
//
//  Created by Klug Noah on 20.10.26.
//

import SwiftUI

struct AchievementDetailView: View {
    @State var achievment : Achievement
    var body: some View {
        ScrollView{
            VStack{
                Image(achievment.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 300)
                    .padding(.top, 30)
                VStack{
                    Text("Achievment Locked")
                        .foregroundColor(.white)
                        .padding(20)
                }.background(.pomodoroRed)
                    .cornerRadius(20)
                    .padding(20)
                VStack(alignment: .leading){
                    Text(achievment.title)
                        .font(.title)
                    HStack{
                        Text(achievment.description)
                        Spacer()
                    }.font(.subheadline)
                        .foregroundStyle(.secondary)
                    Divider()
                    
                    Text("\(achievment.points) Points")
                        .font(.title2)
                    Spacer()
                }.padding(20)
            }
            .navigationTitle(achievment.title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AchievementDetailView(achievment: achievements[0])
}
