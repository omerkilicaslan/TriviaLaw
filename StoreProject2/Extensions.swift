//
//  Extensions.swift
//  StoreProject2
//
//  Created by Ömer Faruk Kılıçaslan on 28.04.2023.
//

import SwiftUI

extension Text {

    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
