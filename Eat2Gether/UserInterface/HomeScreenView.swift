//
//  HomeScreenView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-08.
//

import SwiftUI

struct Constants {
     static let aqua: Color = Color(red: 0 / 255, green: 167 / 255, blue: 157 / 255)
 }

struct HomeScreenView: View {
    var body: some View {
        VStack (spacing: 0){
            Image("HomeScreenIcon")
                .padding(.bottom, 48)
            Button(action: {
                print("Join a room")
            }) {
                Text("Join a room")
                    .font(.system(size: 14))
                    .foregroundColor(Constants.aqua)
                    .frame(width: 200, height: 30)
                    .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Constants.aqua, lineWidth: 2)
                            )
            }
            .padding(.bottom, 18)
            Button(action: {
                print("Generate room")
            }) {
                Text("Generate room")
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                    .frame(width: 200, height: 30)
                    .background(Constants.aqua)
                    .cornerRadius(20)
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
