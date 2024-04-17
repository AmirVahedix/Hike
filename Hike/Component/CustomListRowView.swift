//
//  CustomListRowView.swift
//  Hike
//
//  Created by Amir on 1/29/1403 AP.
//

import SwiftUI

struct CustomListRowView: View {
    @State var label: String
    @State var icon: String
    @State var color: Color
    @State var description: String? = nil
    @State var linkLabel: String? = nil
    @State var linkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            if (description != nil) {
                Text(description!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } else if (linkLabel != nil && linkDestination != nil) {
                Link(linkLabel!, destination: URL(string: linkDestination!)!)
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
            } else {
                EmptyView()
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(color)
                    Image(systemName: icon)
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                }
                Text(label)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(
            label: "Application",
            icon: "apps.iphone",
            color: .blue,
            description: "Hike"
        )
    }
}
