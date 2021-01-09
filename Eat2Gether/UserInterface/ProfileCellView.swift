//
//  ProfileCellView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-08.
//

import SwiftUI

struct ProfileCellView: View {
    var body: some View {
        VStack {
            Image("profilePic")
                .resizable()
                .frame(width: 85, height: 85)
                .clipShape(Circle())
            Text("You")
                .font(.system(size: 14))
                .bold()
                .foregroundColor(Color.black)
            Text("🍗 Meat")
                .font(.system(size: 14))
                .frame(width: 100, height: 23)
                .background(Color.green)
                .cornerRadius(20)
                .padding(.vertical, 1)
            Text("$-$$")
                .font(.system(size: 14))
                .frame(width: 100, height: 23)
                .background(Color.yellow)
                .cornerRadius(20)
                .padding(.vertical, 1)
            Text("🇯🇵 Japanese")
                .font(.system(size: 14))
                .frame(width: 100, height: 23)
                .background(Color.pink)
                .cornerRadius(20)
                .padding(.vertical, 1)
        }
        .frame(width: 90)
        .padding(.horizontal, 12)
    }
}

struct ProfileCellView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCellView()
    }
}
