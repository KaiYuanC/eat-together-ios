//
//  RoomView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-08.
//

import SwiftUI

struct RoomView: View {
    var body: some View {
        VStack(spacing: 0) {
            roomInfoView
                .padding(.vertical, 12)
            Text("Who’s dining")
                .bold()
                .font(.system(size: 28))
                .foregroundColor(Constants.aqua)
                .padding(.vertical, 24)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<10) {_ in
                        ProfileCellView()
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
            Text("Waiting on 3/4 diners to finish...")
                .foregroundColor(.orange)
            Button(action: {
                print("Edit preferences")
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
            }
            Button(action: {
                print("Let’s start")
            }) {
                Text("Let’s start")
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(Color.white)
                    .frame(width: 291, height: 30)
                    .background(Constants.aqua)
                    .cornerRadius(20)
            }
        }
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView()
    }
}