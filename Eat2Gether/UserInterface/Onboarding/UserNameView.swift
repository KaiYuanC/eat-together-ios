//
//  UserNameView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-08.
//

import SwiftUI

struct UserNameView: View {
    @State var userName: String = ""
    
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
                Text("This will only be seen by those you invite into a room")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Spacer()
                HStack(spacing: 20) {
                    Circle()
                        .fill(Constants.orange)
                        .frame(width: 12, height: 12)
                    Circle()
                        .fill(Color.white)
                        .frame(width: 12, height: 12)
                }
                .padding(.bottom, 60)
            }
            .frame(width: 312)
        }

    }
}

struct UserNameView_Previews: PreviewProvider {
    static var previews: some View {
        UserNameView()
    }
}
