//
//  CuisineFilterView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct CuisineFilterView: View {
    @Binding var filterShown: Bool
    @Binding var preferences: [PreferenceTag]
    
    var body: some View {
        VStack {
            Spacer()
            Text("Any dietary preferences?")
                .font(.system(size: 24))
                .foregroundColor(Constants.aqua)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.vertical, 24)
                .padding(.top, 24)
            VStack (spacing: 24) {
                HStack {
                    CuisineOptionView(emoji: "🇨🇳", text: "Chinese", preferences: $preferences)
                    CuisineOptionView(emoji: "🍔", text: "Fast food", preferences: $preferences)
                    CuisineOptionView(emoji: "🇰🇷", text: "Korean", preferences: $preferences)
                }
                HStack {
                    CuisineOptionView(emoji: "🥞", text: "Breakfast", preferences: $preferences)
                    CuisineOptionView(emoji: "🍕", text: "Pizza", preferences: $preferences)
                    CuisineOptionView(emoji: "🇲🇽", text: "Mexican", preferences: $preferences)
                }
                HStack {
                    CuisineOptionView(emoji: "🇯🇵", text: "Japanese", preferences: $preferences)
                    CuisineOptionView(emoji: "🇺🇸", text: "American", preferences: $preferences)
                    CuisineOptionView(emoji: "🇮🇳", text: "Indian", preferences: $preferences)
                }
                HStack {
                    CuisineOptionView(emoji: "🌱", text: "Healthy", preferences: $preferences)
                    CuisineOptionView(emoji: "🇮🇹", text: "Italian", preferences: $preferences)
                    CuisineOptionView(emoji: "🇹🇭", text: "Thai", preferences: $preferences)
                }
            }
            NavigationLink(destination: TransportationFilterView(filterShown: $filterShown, preferences: $preferences)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarBackButtonHidden(true)) {
                Text("Continue")
                    .font(.system(size: 14))
                    .foregroundColor(Constants.aqua)
                    .frame(width: 200, height: 30)
                    .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Constants.aqua, lineWidth: 2)
                            )
                    .padding(.vertical, 18)
            }

            Spacer()
            HStack(spacing: 20) {
                Circle()
                    .fill(Constants.lightGray)
                    .frame(width: 12, height: 12)
                Circle()
                    .fill(Constants.lightGray)
                    .frame(width: 12, height: 12)
                Circle()
                    .fill(Constants.orange)
                    .frame(width: 12, height: 12)
                Circle()
                    .fill(Constants.lightGray)
                    .frame(width: 12, height: 12)
            }
            .padding(.bottom, 50)

        }
        .padding(.bottom, 60)
    }
}

struct CuisineOptionView: View {
    var emoji: String
    var text: String
    @State var selected: Bool = false
    @Binding var preferences: [PreferenceTag]
    
    var body: some View {
        Button(action: {
            selected.toggle()
            if selected {
                preferences.append(PreferenceTag(type: .transportation, detail: text))
            }
        }) {
            VStack {
                Text(emoji)
                    .padding(30)
                    .background(Constants.lightGray)
                    .clipShape(Circle())
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(selected ? Constants.orange : Constants.lightGray, lineWidth: 2)
                    )
                Text(text)
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(.black)
            }
        }
    }
}

struct CuisineFilterView_Previews: PreviewProvider {
    static var previews: some View {
        CuisineFilterView(filterShown: Binding.constant(true), preferences: Binding.constant([]))
    }
}
