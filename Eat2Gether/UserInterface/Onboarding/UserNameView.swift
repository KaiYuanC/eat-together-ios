//
//  UserNameView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-08.
//

import SwiftUI

struct UserNameView: View {
    @State var userName: String = ""
    @State var postalCode: String = ""
    @Binding var isShown: Bool
        
    var body: some View {
        ZStack {
            Constants.aqua.edgesIgnoringSafeArea(.all)
            VStack (spacing: 14) {
                Image("SmallAppIcon")
                Spacer()
                Text("Hey there 👋\nWhat is your first name?")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 10)
                TextField("Start typing here...", text: $userName)
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(9)
                Text("What's your postal code?")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .bold()
                    .multilineTextAlignment(.center)
                TextField("Enter your postal code", text: $postalCode)
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(9)
                    .padding(.bottom, 12)
                Button(action: {
                    defaults.set(userName, forKey: "userName")
                    defaults.set(postalCode, forKey: "postalCode")
                    isShown = false
                }) {
                    Text("Let's start")
                        .font(.system(size: 14))
                        .foregroundColor(Constants.aqua)
                        .frame(width: 200, height: 30)
                        .background(Color.white)
                        .cornerRadius(16)
                }
                Spacer()
            }
            .frame(width: 312)
        }
    }
}

struct UserNameView_Previews: PreviewProvider {
    static var previews: some View {
        UserNameView(isShown: Binding.constant(true))
    }
}
