//
//  CardView.swift
//  Hike
//
//  Created by Amir on 1/28/1403 AP.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - HEADER
                VStack (alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                        )
                        Spacer()
                        Button {
                            print("This shit works.")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                // MARK: - MAIN CONTENT
                ZStack {
                    Circle()
                      .fill(
                        LinearGradient(
                          colors: [
                            Color("ColorIndigoMedium"),
                            Color("ColorSalmonLight")
                         ],
                         startPoint: .topLeading,
                         endPoint: .bottomTrailing
                        )
                      )
                      .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                // MARK: - Footer
                Button {
                    
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.customGreenLight, .customGreenMedium],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(
                            color: .black.opacity(0.25),
                            radius: 0.25,
                            x: 1,
                            y: 2
                        )
                }
                .buttonStyle(GradientButton())
            }
        } //: Card
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
