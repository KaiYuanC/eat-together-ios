//
//  FoodOptionView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct FoodOptionView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading) {
                Image("foodBackground")
                    .resizable()
                    .frame(width: 320, height: 240)
                Text("Sushi Restaurant 1")
                    .font(.title2)
                    .padding(.horizontal)
                Text("12 Address Road, X0X 0X0\n$-$$")
                    .font(.body)
                    .padding(.horizontal)
                VStack {
                    Text("Menu includes:")
                        .font(.system(size: 24))
                        .foregroundColor(Constants.aqua)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 12)
                    HStack {
                        PreferenceView(type: .dietRestriction, label: "🥑  Vegan")
                        PreferenceView(type: .dietRestriction, label: "🥜  Nut-free")
                        PreferenceView(type: .dietRestriction, label: "🥕  Vegetarian")
                    }
                    .padding(.bottom, 24)
                }
            }
            .frame(width: 320)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(radius: 5)
            Spacer()
            HStack {
                Button(action: {
                    print("No")
                }) {
                    Text("❌")
                        .padding(30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.red, lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    print("Yes")
                }) {
                    Text("👍")
                        .padding(30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Constants.orange, lineWidth: 2)
                        )                }
            }
            .frame(width: 320)
            .padding(.bottom)
        }
    }
}

struct FoodOptionView_Previews: PreviewProvider {
    static var previews: some View {
        FoodOptionView()
    }
}
