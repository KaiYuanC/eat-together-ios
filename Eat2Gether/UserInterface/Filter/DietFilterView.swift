//
//  DietFilterView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct DietFilterView: View {
    @Binding var filterShown: Bool
    @Binding var preferences: [PreferenceTag]
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Any dietary preferences?")
                    .font(.system(size: 24))
                    .foregroundColor(Constants.aqua)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 32)
                VStack (spacing: 24) {
                    HStack {
                        OptionView(emoji: "🥛", text: "Dairy-free", preferences: $preferences)
                        OptionView(emoji: "🥜", text: "Nut-free", preferences: $preferences)
                        OptionView(emoji: "🍞️", text: "Gluten-free", preferences: $preferences)
                    }
                    HStack {
                        OptionView(emoji: "🥕", text: "Vegetarian", preferences: $preferences)
                        OptionView(emoji: "🥑", text: "Vegan", preferences: $preferences)
                        OptionView(emoji: "☪️", text: "Halal", preferences: $preferences)
                    }
                }
                NavigationLink(destination: PriceFilterView(filterShown: $filterShown, preferences: $preferences)
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
                        .fill(Constants.orange)
                        .frame(width: 12, height: 12)
                    Circle()
                        .fill(Constants.lightGray)
                        .frame(width: 12, height: 12)
                    Circle()
                        .fill(Constants.lightGray)
                        .frame(width: 12, height: 12)
                    Circle()
                        .fill(Constants.lightGray)
                        .frame(width: 12, height: 12)
                }
                .padding(.bottom, 60)
                
            }
            .padding(.bottom, 50)
        }
    }
}

struct OptionView: View {
    var emoji: String
    var text: String
    @State var selected: Bool = false
    @Binding var preferences: [PreferenceTag]
    
    var body: some View {
        Button(action: {
            selected.toggle()
            if selected {
                preferences.append(PreferenceTag(type: .dietRestriction, detail: text))
            }
        }) {
            VStack {
                Text(emoji)
                    .padding(30)
                    .background(Constants.lightAqua)
                    .clipShape(Circle())
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(selected ? Constants.orange : Constants.lightAqua, lineWidth: 2)
                    )
                Text(text)
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(.black)
            }
        }
    }
}

struct DietFilterView_Previews: PreviewProvider {
    static var previews: some View {
        DietFilterView(filterShown: Binding.constant(true), preferences: Binding.constant([]))
    }
}
