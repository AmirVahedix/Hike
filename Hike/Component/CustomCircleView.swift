//
//  CustomCircleView.swift
//  Hike
//
//  Created by Amir on 1/29/1403 AP.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
              .fill(
                LinearGradient(
                  colors: [
                    Color("ColorIndigoMedium"),
                    Color("ColorSalmonLight")
                 ],
                  startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                  endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                )
              )
              .onAppear {
                  withAnimation(
                    .linear(duration: 3.0)
                    .repeatForever(autoreverses: true)
                  ) {
                      isAnimateGradient.toggle()
                  }
              }
            MotionAnimationView()
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
