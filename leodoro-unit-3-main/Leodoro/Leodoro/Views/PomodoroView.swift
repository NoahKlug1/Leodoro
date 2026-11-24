//
//  PomodoroView.swift
//  Leodoro
//
//  Created by Klug Noah on 24.11.26.
//

import SwiftUI

struct PomodoroView: View {
    @State var viewModel = PomodoroViewModel(pomodoroManager: PomodoroManager())
    var body: some View {
        VStack{
            Text("Hallo")
                .font(.title)
                .padding([.leading, .trailing], 20)
                .padding(.top, 30)
            Spacer()
            ZStack{
                CircularProgressView(progress: viewModel.progress, color: viewModel.progressColor)
                    .opacity(viewModel.isProgressVisible ? 1 : 0)
                Image("Pomodoro")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
            .padding(50)
            Spacer()
            Text("Hello")
                .font(.largeTitle)
                .bold()
        }.background(viewModel.progressColor)
            .opacity(0.5)
            .task {
                //TODO: start timer
            }
            .onDisappear{
                print("pomodoro timer dismissed")
                //TODO: stop timer
            }
    }
}

#Preview {
    PomodoroView()
}
