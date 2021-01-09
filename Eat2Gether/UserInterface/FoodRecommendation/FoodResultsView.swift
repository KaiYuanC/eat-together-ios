//
//  FoodResultsView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct FoodResultsView: View {
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
                    Image("foodBackground")
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
                    Text("Sushi Restaurant 1")
                        .font(.title2)
                    Text("12 Address Road, X0X 0X0\n$-$$")
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
                    Image("foodBackground")
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
                    Text("Sushi Restaurant 2")
                        .font(.title2)
                    Text("12 Address Road, X0X 0X0\n$-$$")
                        .font(.body)
                }
            }
        }
    }
}

struct FoodResultsView_Previews: PreviewProvider {
    static var previews: some View {
        FoodResultsView()
    }
}
