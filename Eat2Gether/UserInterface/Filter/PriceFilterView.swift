//
//  PriceFilterView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct PriceFilterView: View {
    @Binding var filterShown: Bool
    @Binding var preferences: [PreferenceTag]
    
    var body: some View {
        VStack {
            Spacer()
            Text("Price range?")
                .font(.system(size: 24))
                .foregroundColor(Constants.aqua)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.vertical, 24)
            HStack {
                PriceOptionView(text: "$-$$", preferences: $preferences)
                PriceOptionView(text: "$$-$$$", preferences: $preferences)
                PriceOptionView(text: "$$$$", preferences: $preferences)
            }
            NavigationLink(destination: CuisineFilterView(filterShown: $filterShown, preferences: $preferences)
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
                    .fill(Constants.orange)
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

struct PriceOptionView: View {
    var text: String
    @State var selected: Bool = false
    @Binding var preferences: [PreferenceTag]
    
    var body: some View {
        Button(action: {
            selected.toggle()
            if selected {
                preferences.append(PreferenceTag(type: .priceRange, detail: text))
            }
        }) {
            Text(text)
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                .background(Constants.lightOrange)
                .cornerRadius(50)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(selected ? Constants.orange : Constants.lightOrange, lineWidth: 2)
                )
        }
    }
}

struct PriceFilterView_Previews: PreviewProvider {
    static var previews: some View {
        PriceFilterView(filterShown: Binding.constant(true), preferences: Binding.constant([]))
    }
}
