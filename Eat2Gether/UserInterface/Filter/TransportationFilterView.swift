//
//  TransportationFilterView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct TransportationFilterView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("How are you getting there?")
                .font(.system(size: 24))
                .foregroundColor(Constants.aqua)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.vertical, 24)
            HStack {
                TransOptionView(emoji: "👣", text: "By foot")
                TransOptionView(emoji: "🚗", text: "By car")
                TransOptionView(emoji: "📱", text: "Order online")
            }
            Button(action: {
                print("Join a room")
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
    
    var body: some View {
        Button(action: {
            print("Join a room")
        }) {
            VStack {
                Text(emoji)
                    .padding(30)
                    .background(Constants.lightGreen)
                    .clipShape(Circle())
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
        TransportationFilterView()
    }
}
