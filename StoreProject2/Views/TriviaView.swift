//
//  TriviaView.swift
//  StoreProject2
//
//  Created by Ömer Faruk Kılıçaslan on 28.04.2023.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager

    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .lilacTitle()
                
                Text("Congratulations, you completed the game")
                
                Text("You Scored = \(triviaManager.score) out of \(triviaManager.length)")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                        QuestionView()
                            
                    }
                } label: {
                    PrimaryButton(text: "Play Again")
                }
                
                NavigationLink {
                   WelcomeView()
                    
                } label: {
                    PrimaryButton(text: "Go To Main Page")
                }
                .navigationBarBackButtonHidden(true)


            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.9, green: 0.92, blue: 0.84))
            .navigationBarHidden(true)



        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
        
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}
