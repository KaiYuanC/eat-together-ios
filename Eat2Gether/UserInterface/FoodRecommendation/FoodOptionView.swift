//
//  FoodOptionView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct FoodOption {
    var image: String
    var name: String
    var address: String
    var preferences: [PreferenceTag]
    var ratings: String
    var review: String
}

struct FoodOptionView: View {
    @Binding var startVoting: Bool
    @Binding var allVoted: Bool
    @State var counter = 0
    var foodOptions: [FoodOption]
    
    var body: some View {
        let foodOption = foodOptions[counter]
        VStack {
            Spacer()
            ScrollView {
                VStack(alignment: .leading) {
                    Image(foodOption.image)
                        .resizable()
                        .frame(width: 320, height: 240)
                    Text(foodOption.name)
                        .font(.title2)
                        .padding(.horizontal)
                    Text(foodOption.address)
                        .font(.body)
                        .padding(.horizontal)
                    VStack {
                        Text("Menu includes:")
                            .font(.system(size: 24))
                            .foregroundColor(Constants.aqua)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(.vertical, 8)
                        HStack {
                            Spacer()
                            PreferenceView(type: .dietRestriction, label: "🍞 GF")
                            PreferenceView(type: .dietRestriction, label: "🥜  Nut-free")
                            Spacer()
                        }
                        .padding(.bottom, 8)
                    }
                    Text("Overall Rating: ⭐️⭐️⭐️⭐️⭐️")
                        .font(.system(size: 24))
                        .foregroundColor(Constants.aqua)
                        .bold()
                        .padding(.bottom, 8)
                        .padding(.leading)
                    Text("Review")
                        .bold()
                        .padding(.bottom, 8)
                        .padding(.leading)
                    Text(foodOption.review)
                        .padding(.bottom, 10)
                        .padding(.leading)
                }
            }
            .frame(width: 320, height: 540)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(radius: 5)
            Spacer()
            HStack {
                Button(action: {
                    if counter + 1 >= foodOptions.count {
                        startVoting = false
                        allVoted = true
                    } else {
                        counter += 1
                    }
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
                    if counter + 1 >= foodOptions.count {
                        startVoting = false
                        allVoted = true
                    } else {
                        counter += 1
                    }
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
        FoodOptionView(startVoting: Binding.constant(true), allVoted: Binding.constant(true), foodOptions: Constants.foodOptions)
    }
}
