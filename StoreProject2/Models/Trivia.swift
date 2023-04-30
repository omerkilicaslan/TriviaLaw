//
//  Trivia.swift
//  StoreProject2
//
//  Created by Ömer Faruk Kılıçaslan on 29.04.2023.
//

import Foundation

struct Trivia: Codable {
    
    var results: [Result]
    struct Result: Codable, Identifiable {
        var id: UUID {
            UUID()
        }
        var category: String
        var type: String
        var difficulty: String
        var question: String
        var correctAnswer: String
        var incorrectAnswers: [String]
        
        var formattedQuestion: AttributedString {
            do{
                return try AttributedString(markdown: question)
            } catch {
                print("Error setting formattedQuestion : \(error)")
                return ""
            }
        }
        
        var answers: [Answer] {
            do {
                let correct = [Answer(text: try AttributedString(markdown: correctAnswer), isCorrect: true)]
                let incorrects = try incorrectAnswers.map { answer in
                    Answer(text: try AttributedString(markdown: answer), isCorrect: false)
                }
                let allAnswers = correct + incorrects
                
                return allAnswers.shuffled()
                
            } catch {
                print("Error setting answers \(error)")
                return []
            }
        }
    }
}


