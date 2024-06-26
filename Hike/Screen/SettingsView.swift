//
//  SettingsView.swift
//  Hike
//
//  Created by Amir on 1/29/1403 AP.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    private let alternateAppIcons: [String] = [
        "AppIcon-Backpack",
        "AppIcon-Camera",
        "AppIcon-Campfire",
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom"
    ]
    
    var body: some View {
        List() {
            // MARK: - Section Header
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack (spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [.customGreenLight, .customGreenMedium, .customGreenDark],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                VStack (spacing: 8) {
                    Text("Where can you find \nperfect tracks")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. TheThe hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }.listRowSeparator(.hidden)
            
            
            // MARK: - Section Icons
            Section(header: Text("App Icons")) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 12) {
                        ForEach(alternateAppIcons.indices, id: \.self) { item in
                            Button {
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item])
                            } label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            }
                            .buttonStyle(.borderless)
                        }
                    }
                }
                .padding(.top, 12)
                Text("Choose yout favorite app icon from the collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 12)
            }
            .listRowSeparator(.hidden)
            
            
            // MARK: - Section About
            Section (
                header: Text("ABOUT THE APP"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © all rights reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) {
                CustomListRowView(
                    label: "Application",
                    icon: "apps.iphone",
                    color: .blue,
                    description: "Hike"
                )
                CustomListRowView(
                    label: "Compatibility",
                    icon: "info.circle",
                    color: .red,
                    description: "iOS, iPadOS"
                )
                CustomListRowView(
                    label: "Technology",
                    icon: "swift",
                    color: .orange,
                    description: "Swift"
                )
                CustomListRowView(
                    label: "Version",
                    icon: "gear",
                    color: .purple,
                    description: "1.0"
                )
                CustomListRowView(
                    label: "Developer",
                    icon: "ellipsis.curlybraces",
                    color: .mint,
                    description: "Amir Vahedi"
                )
                CustomListRowView(
                    label: "Designer",
                    icon: "paintpalette",
                    color: .pink,
                    description: "Javad"
                )
                CustomListRowView(
                    label: "Website",
                    icon: "globe",
                    color: .indigo,
                    linkLabel: "AmirVahedix",
                    linkDestination: "https://AmirVahedix.com"
                )
            }
        }
    }
}

#Preview {
    SettingsView()
}
