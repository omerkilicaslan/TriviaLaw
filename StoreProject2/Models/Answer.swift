//
//  Answer.swift
//  StoreProject2
//
//  Created by Ömer Faruk Kılıçaslan on 28.04.2023.
//

import Foundation

struct Answer: Identifiable, Equatable {
    var id = UUID()
    var text: String
    var isCorrect: Bool
}
