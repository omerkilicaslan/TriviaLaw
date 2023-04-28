//
//  ProgressBar.swift
//  StoreProject2
//
//  Created by Ömer Faruk Kılıçaslan on 28.04.2023.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    var body: some View {
        ZStack(alignment: .leading){
            
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(Color.gray)
                .cornerRadius(10)
            
            Rectangle()
                .frame(width: progress, height: 4)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(10)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 10)
    }
}
