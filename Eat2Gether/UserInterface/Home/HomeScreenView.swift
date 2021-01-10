//
//  HomeScreenView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-08.
//

import SwiftUI

struct HomeScreenView: View {
    
    var body: some View {
        NavigationView {
            VStack (spacing: 0) {
                Image("HomeScreenIcon")
                    .padding(.bottom, 48)
                NavigationLink(destination: EnteryCodeView().navigationBarTitleDisplayMode(.inline)) {
                    Text("Join a room")
                        .font(.system(size: 14))
                        .foregroundColor(Constants.aqua)
                        .frame(width: 200, height: 30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Constants.aqua, lineWidth: 2)
                        )
                        .padding(.bottom, 18)
                }
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
            .padding(.bottom, 50)
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
