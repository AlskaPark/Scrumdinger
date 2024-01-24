//
//  ScrumProgressViewStyle.swift
//  Scrumdinger
//
//  Created by 박재영 on 1/17/24.
//

import SwiftUI

struct ScrumProgressViewStyle: ProgressViewStyle {
    var theme: Theme
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(theme.accentColor)
                .frame(height: 20.0)
            ProgressView(configuration)
                .frame(height: 12.0)
                .accentColor(theme.mainColor)
                .padding(.horizontal)
        }
    }
}
