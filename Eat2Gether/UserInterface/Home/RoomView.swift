//
//  RoomView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-08.
//

import SwiftUI

struct RoomView: View {
    @State private var preferences: [PreferenceTag] = []
    @State private var allFilled: Bool = false
    @State private var filterShown: Bool = false
    
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
                    ForEach(0..<5) {i in
                        ProfileCellView(name:Constants.names[i],
                                        image: String(i + 1), isHost: i == 2 ? true : false, preferences: Constants.preferences[i])
                    }
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
            Text("Waiting on 1/5 diners to finish...")
                .foregroundColor(.orange)
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
                print("Let’s start")
            }) {
                Text("Let’s start")
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(Color.white)
                    .frame(width: 291, height: 30)
                    .background(preferences.count == 0 ? Constants.pewter : Constants.aqua)
                    .cornerRadius(20)
            }
            .disabled(preferences.count == 0)
        }
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView()
    }
}
