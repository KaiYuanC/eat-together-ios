//
//  LocationFinderView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct LocationFinderView: View {
    @State var postalCode: String = ""
    @Binding var selector: String?
    
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
                TextField("Enter your postal code", text: $postalCode)
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(9)
                Button(action: {
                    defaults.set(postalCode, forKey: "postalCode")
                    selector = "home"
                }) {
                    Text("Good to go!")
                        .font(.system(size: 14))
                        .foregroundColor(Constants.aqua)
                        .frame(width: 200, height: 30)
                        .background(Color.white)
                        .cornerRadius(16)
                }
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
        LocationFinderView(selector: Binding.constant("locationFinder"))
    }
}
