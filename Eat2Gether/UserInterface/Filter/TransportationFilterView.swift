//
//  TransportationFilterView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct TransportationFilterView: View {
    @Binding var filterShown: Bool
    @Binding var preferences: [PreferenceTag]
    
    var body: some View {
        VStack {
            Spacer()
            Text("How are you getting there?")
                .font(.system(size: 24))
                .foregroundColor(Constants.aqua)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.vertical, 32)
            HStack {
                TransOptionView(emoji: "👣", text: "By foot", preferences: $preferences)
                TransOptionView(emoji: "🚗", text: "By car", preferences: $preferences)
                TransOptionView(emoji: "📱", text: "Order online", preferences: $preferences)
            }
            Button(action: {
                filterShown = false
            }) {
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
                    .fill(Constants.lightGray)
                    .frame(width: 12, height: 12)
                Circle()
                    .fill(Constants.orange)
                    .frame(width: 12, height: 12)
            }
            .padding(.bottom, 50)

        }
        .padding(.bottom, 60)
    }
}

struct TransOptionView: View {
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
                    .background(Constants.lightGreen)
                    .clipShape(Circle())
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(selected ? Constants.orange : Constants.lightGreen, lineWidth: 2)
                    )
                Text(text)
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(.black)
            }
        }
    }
}

struct TransportationFilterView_Previews: PreviewProvider {
    static var previews: some View {
        TransportationFilterView(filterShown: Binding.constant(true), preferences: Binding.constant([]))
    }
}
