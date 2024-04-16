//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Amir on 1/28/1403 AP.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed
                ?
                    LinearGradient(
                        colors: [.customGrayLight, .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    ) :
                    LinearGradient(
                        colors: [.customGrayLight, .customGrayMedium],
                        startPoint: .bottom,
                        endPoint: .top
                    )
            )
            .cornerRadius(40)
    }
}
