//
//  ContentView.swift
//  StoreProject2
//
//  Created by Ömer Faruk Kılıçaslan on 28.04.2023.
//

import SwiftUI

struct WelcomeView: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing:40) {
                VStack(spacing: 20) {
                    
                    Text("Trivia Game")
                        .lilacTitle()
                    
                    Text("Are you ready to test your skills?")
                        .foregroundColor(Color("AccentColor"))
                }
                NavigationLink {
                    TriviaView()
                        .environmentObject(TriviaManager())
                } label: {
                    PrimaryButton(text: "Let's Go!")
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 0.9, green: 0.92, blue: 0.84))
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
