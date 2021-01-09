//
//  PriceFilterView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct PriceFilterView: View {
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
                PriceOptionView(text: "$-$$")
                PriceOptionView(text: "$$-$$$")
                PriceOptionView(text: "$$$$")
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
    
    var body: some View {
        Button(action: {
            print("Join a room")
        }) {
            Text(text)
                .foregroundColor(.orange)
                .padding(30)
                .background(Constants.lightOrange)
                .clipShape(Circle())
        }
    }
}

struct PriceFilterView_Previews: PreviewProvider {
    static var previews: some View {
        PriceFilterView()
    }
}
