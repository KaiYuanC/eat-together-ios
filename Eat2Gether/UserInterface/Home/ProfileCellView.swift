//
//  ProfileCellView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-08.
//

import SwiftUI

enum PreferenceType {
    case dietRestriction
    case priceRange
    case cuisineType
    case transportation
}

struct PreferenceTag {
    var type: PreferenceType
    var detail: String
}

struct ProfileCellView: View {
    var name: String = "Kate"
    var image: String = "1"
    var isHost: Bool = false
    var preferences: [PreferenceTag] = []
    
    var body: some View {
        VStack {
            ZStack (alignment: .bottom) {
                Image(image)
                    .resizable()
                    .frame(width: 85, height: 85)
                    .clipShape(Circle())
                    .padding(10)
                Text("Host")
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 50, height: 23)
                    .background(Constants.aqua)
                    .cornerRadius(20)
                    .padding(.vertical, 1)
                    .opacity(isHost ? 1 : 0)
            }
            Text(name)
                .font(.system(size: 14))
                .bold()
                .foregroundColor(Color.black)
            ScrollView {
                VStack (spacing: 8) {
                    ForEach(0..<preferences.count) {i in
                        PreferenceView(type: preferences[i].type, label: preferences[i].detail)
                    }
                }
            }
        }
        .frame(width: 90)
        .padding(.horizontal, 12)
    }
}

struct PreferenceView: View {
    var type: PreferenceType
    var label: String
    
    var body: some View {
        if type == .dietRestriction {
            return Text(label)
                .font(.system(size: 14))
                .frame(width: 100, height: 23)
                .background(Constants.lightAqua)
                .cornerRadius(20)
        } else if type == .priceRange {
            return Text(label)
                .font(.system(size: 14))
                .frame(width: 100, height: 23)
                .background(Constants.lightOrange)
                .cornerRadius(20)
        } else if type == .cuisineType {
            return Text(label)
                .font(.system(size: 14))
                .frame(width: 100, height: 23)
                .background(Constants.lightGray)
                .cornerRadius(20)
        } else {
            return Text(label)
                .font(.system(size: 14))
                .frame(width: 100, height: 23)
                .background(Constants.lightGreen)
                .cornerRadius(20)
        }
    }
}

struct ProfileCellView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCellView(image: "1", isHost: false, preferences: [PreferenceTag(type: .dietRestriction, detail: "🍗 Meat")])
    }
}
