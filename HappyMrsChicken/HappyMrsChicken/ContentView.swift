//
//  ContentView.swift
//  HappyMrsChicken
//
//  Created by Anup D'Souza on 14/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var score = 0
    @State private var currentTime = 60
    
    var body: some View {
        VStack {
            // MARK: Nav elements
            HStack {
                
                // MARK: Quit game
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.buttonBorder)
                }
                .padding(15)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.buttonBorder, lineWidth: 2)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(.buttonBackground)
                        )
                )
                                
                Spacer()
                
                // MARK: HUD
                VStack {
                    Text("Score")
                        .stroke(color: .black.opacity(0.5))
                    ZStack {
                        Capsule()
                            .foregroundStyle(.white)
                        Text("\(score)")
                            .font(.title)
                            .stroke(color: .score)
                    }
                }
                .frame(width: 120, height: 75)
                
                Spacer()
                
                // MARK: Time display
                VStack {
                    Text("Time")
                        .stroke(color: .black.opacity(0.5))
                    Label(
                        title: {
                            Text("\(currentTime)s")
                                .stroke(color: .black.opacity(0.5))
                        },
                        icon: {
                            Image(systemName: "stopwatch.fill")
                        }
                    )
                }
            }
            .padding(.horizontal, 20)
            
            Spacer()
        }
        .foregroundStyle(.white)
        .background {
            ZStack(content: {
                Color.background
            })
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
