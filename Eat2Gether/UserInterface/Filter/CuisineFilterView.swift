//
//  CuisineFilterView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct CuisineFilterView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Any dietary preferences?")
                .font(.system(size: 24))
                .foregroundColor(Constants.aqua)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.vertical, 24)
            VStack (spacing: 24) {
                HStack {
                    CuisineOptionView(emoji: "🇨🇳", text: "Chinese")
                    CuisineOptionView(emoji: "🍔", text: "Fast food")
                    CuisineOptionView(emoji: "🇰🇷", text: "Korean")
                }
                HStack {
                    CuisineOptionView(emoji: "🥞", text: "Breakfast")
                    CuisineOptionView(emoji: "🍕", text: "Pizza")
                    CuisineOptionView(emoji: "🇲🇽", text: "Mexican")
                }
                HStack {
                    CuisineOptionView(emoji: "🇯🇵", text: "Japanese")
                    CuisineOptionView(emoji: "🇺🇸", text: "American")
                    CuisineOptionView(emoji: "🇮🇳", text: "Indian")
                }
                HStack {
                    CuisineOptionView(emoji: "🌱", text: "Healthy")
                    CuisineOptionView(emoji: "🇮🇹", text: "Italian")
                    CuisineOptionView(emoji: "🇹🇭", text: "Thai")
                }
            }
            Button(action: {
                print("Continue")
            }) {
                Text("Continue")
                    .font(.system(size: 14))
                    .foregroundColor(Constants.aqua)
                    .frame(width: 200, height: 30)
                    .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Constants.aqua, lineWidth: 2)
                            )
            }
            .padding(.vertical, 18)

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
    
    var body: some View {
        Button(action: {
            print("Join a room")
        }) {
            VStack {
                Text(emoji)
                    .padding(30)
                    .background(Constants.lightGray)
                    .clipShape(Circle())
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
        CuisineFilterView()
    }
}
