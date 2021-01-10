//
//  EnteryCodeView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import SwiftUI

struct EnteryCodeView: View {
    @State var roomID: String = ""
    
    var body: some View {
        ZStack {
            Constants.aqua.edgesIgnoringSafeArea(.all)
            VStack (spacing: 24) {
                Image("SmallAppIcon")
                    .padding(.top, 12)
                Spacer()
                Text("Enter the 5 digit code")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 10)
                TextField("5 digit code", text: $roomID)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(16)
                    .keyboardType(.decimalPad)
                NavigationLink(destination: RoomView(roomID: roomID).navigationBarTitleDisplayMode(.inline)) {
                    Text("Submit")
                        .font(.system(size: 14))
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 291, height: 30)
                        .background(Constants.orange)
                        .cornerRadius(20)
                        .padding(.bottom, 60)
                }
                Spacer()
            }
            .frame(width: 312)
        }
    }
}

struct EnteryCodeView_Previews: PreviewProvider {
    static var previews: some View {
        EnteryCodeView()
    }
}
