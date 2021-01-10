//
//  Constants.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-09.
//

import Foundation
import SwiftUI

struct Constants {
    static let aqua: Color = Color(red: 9 / 255, green: 165 / 255, blue: 118 / 255)
    static let orange: Color = Color(red: 251 / 255, green: 176 / 255, blue: 64 / 255)
    static let lightAqua: Color = Color(red: 202 / 255, green: 233 / 255, blue: 231 / 255)
    static let lightOrange: Color = Color(red: 245 / 255, green: 235 / 255, blue: 210 / 255)
    static let lightGray: Color = Color(red: 229 / 255, green: 229 / 255, blue: 229 / 255)
    static let lightGreen: Color = Color(red: 193 / 255, green: 234 / 255, blue: 179 / 255)
    static let preferences: [[PreferenceTag]] = [
        [PreferenceTag(type: .dietRestriction, detail: "🥑  Vegan"),
         PreferenceTag(type: .transportation, detail: "📱 online"),
        PreferenceTag(type: .cuisineType, detail: "🇯🇵  Japanese")],
        [PreferenceTag(type: .dietRestriction, detail: "🥕  Vegetarian")],
        [PreferenceTag(type: .priceRange, detail: "$-$$"),
         PreferenceTag(type: .cuisineType, detail: "🇨🇳  Chinese"),
         PreferenceTag(type: .cuisineType, detail: "🇹🇭 Thai")],
        [PreferenceTag(type: .transportation, detail: "📱 online")],
        [PreferenceTag(type: .dietRestriction, detail: "🥑  Vegan"),
         PreferenceTag(type: .transportation, detail: "📱 online"),
        PreferenceTag(type: .cuisineType, detail: "🇯🇵  Japanese")],
        [PreferenceTag(type: .dietRestriction, detail: "🥕  Vegetarian")],
        [PreferenceTag(type: .priceRange, detail: "$-$$"),
         PreferenceTag(type: .cuisineType, detail: "🇨🇳  Chinese"),
         PreferenceTag(type: .dietRestriction, detail: "🥑  Vegan")],
        [],
        [],
        [PreferenceTag(type: .cuisineType, detail: "🇨🇳  Chinese")],
        []]
    static let names: [String] = ["You", "Kathleen", "Longxi", "Kai", "Selina", "Reshma", "Susan", "Kimberly", "Joanna", "Fei-Fei"]
 }
