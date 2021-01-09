//
//  LocationFinderView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct LocationFinderView: View {
    var body: some View {
        ZStack {
            Constants.aqua.edgesIgnoringSafeArea(.all)
            VStack (spacing: 12) {
                Image("SmallAppIcon")
                Spacer()
                Text("Just one more thing...")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .bold()
                    .multilineTextAlignment(.center)
                Text("Our app uses location services to locate\n restaurants near you and your friends")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("Enable location services")
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(.black)
                    .padding(8)
                    .padding(.horizontal, 24)
                    .background(Color.white)
                    .cornerRadius(16)
                    .padding(16)
                Spacer()
                HStack(spacing: 20) {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 12, height: 12)
                    Circle()
                        .fill(Constants.orange)
                        .frame(width: 12, height: 12)
                }
                .padding(.bottom, 60)
            }
            .frame(width: 312)
        }

    }
}

struct LocationFinderView_Previews: PreviewProvider {
    static var previews: some View {
        LocationFinderView()
    }
}
