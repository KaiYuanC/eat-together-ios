//
//  newRoomView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-10.
//

import SwiftUI

struct newRoomView: View {
    @State private var preferences: [PreferenceTag] = []
    @State private var allVoted: Bool = false
    @State private var filterShown: Bool = false
    @State private var startVoting: Bool = false
    @State private var viewResult: Bool = false
        
    var body: some View {
        VStack(spacing: 0) {
            roomInfoView
                .padding(.vertical, 12)
            Text("Who’s dining")
                .bold()
                .font(.system(size: 28))
                .foregroundColor(Constants.aqua)
                .padding(.vertical, 12)
            ScrollView(.horizontal) {
                HStack {
                    ProfileCellView(name: "You",
                                    image: String(3), isHost: true, preferences: [])
                }
            }
            Spacer()
            bottomButtonView
            
        }
    }
    
    var roomInfoView: some View {
        VStack(spacing: 8) {
            Text("Room code")
                .bold()
                .font(.system(size: 20))
                .foregroundColor(Color.white)
            Text("Ask your friends to the in the 5-digit code below:")
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)
                .fixedSize(horizontal: false, vertical: true)
                .frame(width: 196)
            Text("93829")
                .bold()
                .font(.system(size: 55))
                .foregroundColor(Color.white)
            Button(action: {
                print("Copy room code")
            }) {
                Text("Copy room code")
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(Color.black)
                    .frame(width: 200, height: 30)
                    .background(Color.white)
                    .cornerRadius(20)
            }
        }
        .frame(width: 315, height: 220)
        .background(Constants.aqua)
        .cornerRadius(24)
    }
    var bottomButtonView: some View {
        VStack(spacing: 12) {
            Text("Waiting for others to join...")
                .foregroundColor(.orange)
                .opacity(preferences.count == 0 ? 1 : 0)
            Button(action: {
                filterShown = true
            }) {
                Text("Edit preferences")
                    .bold()
                    .font(.system(size: 14))
                    .foregroundColor(Constants.aqua)
                    .frame(width: 291, height: 30)
                    .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Constants.aqua, lineWidth: 2)
                            )
            }.fullScreenCover(isPresented: $filterShown) {
                DietFilterView(filterShown: $filterShown, preferences: $preferences)
            }
            Button(action: {
                startVoting = true
            }) {
                Text(allVoted ? "Click to view results" : "Let’s start")
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(Color.white)
                    .frame(width: 291, height: 30)
                    .background(preferences.count == 0 ? Constants.pewter : Constants.aqua)
                    .cornerRadius(20)
            }
            .disabled(preferences.count == 0)
            .fullScreenCover(isPresented: $startVoting) {
                if allVoted {
                    FoodResultsView(viewResult: $startVoting)
                } else {
                    FoodOptionView(startVoting: $startVoting, allVoted: $allVoted, foodOptions: Constants.foodOptions)
                    
                }
            }
        }
    }
}

struct newRoomView_Previews: PreviewProvider {
    static var previews: some View {
        newRoomView()
    }
}
