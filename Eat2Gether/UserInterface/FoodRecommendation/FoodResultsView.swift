//
//  FoodResultsView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct FoodResultsView: View {
    @Binding var viewResult: Bool
    
    var body: some View {
        VStack {
            Text("Top Pick")
                .font(.system(size: 32))
                .foregroundColor(Constants.aqua)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.vertical, 24)
            HStack (spacing: 0) {
                ZStack {
                    Image("food4")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                    Text("75%")
                        .font(.system(size: 52))
                        .foregroundColor(.white)
                        .bold()
                        .padding(30)
                        .background(Constants.orange)
                        .clipShape(Circle())
                        .opacity(0.8)
                }
                VStack(alignment: .leading) {
                    Text("Lai Wah Heen")
                        .font(.title2)
                    Text("108 Chestnut St, M5G 1R3\n$$")
                        .font(.body)
                }
            }
            Text("Runner-up")
                .font(.system(size: 32))
                .foregroundColor(Constants.aqua)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.vertical, 24)
            HStack (spacing: 0) {
                ZStack {
                    Image("food7")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                    Text("50%")
                        .font(.system(size: 52))
                        .foregroundColor(.white)
                        .bold()
                        .padding(30)
                        .background(Constants.orange)
                        .clipShape(Circle())
                        .opacity(0.8)
                }
                VStack(alignment: .leading) {
                    Text("Tenon Vegan Sushi")
                        .font(.title2)
                    Text("487 Bloor St W, M5S 1Y2\n$-$$")
                        .font(.body)
                }
            }
            Button(action: {
                viewResult = false
            }) {
                Text("Back to room")
                    .font(.system(size: 14))
                    .foregroundColor(Constants.aqua)
                    .frame(width: 200, height: 30)
                    .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Constants.aqua, lineWidth: 2)
                            )
                    .padding(.vertical, 18)
            }
        }
        .padding(.trailing)
    }
}

struct FoodResultsView_Previews: PreviewProvider {
    static var previews: some View {
        FoodResultsView(viewResult: Binding.constant(true))
    }
}
