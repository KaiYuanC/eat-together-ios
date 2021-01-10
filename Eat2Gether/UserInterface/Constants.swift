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
    static let pewter: Color = Color(red: 156 / 255, green: 156 / 255, blue: 156 / 255)
    static let lightGreen: Color = Color(red: 193 / 255, green: 234 / 255, blue: 179 / 255)
    static let preferences2: [[PreferenceTag]] = [
        [PreferenceTag(type: .dietRestriction, detail: "🍞  GF"),
         PreferenceTag(type: .cuisineType, detail: "🇨🇳  Chinese"),
         PreferenceTag(type: .transportation, detail: "📱 online")],
        [PreferenceTag(type: .dietRestriction, detail: "🍞  GF"),
         PreferenceTag(type: .transportation, detail: "📱 online"),
        PreferenceTag(type: .cuisineType, detail: "🇯🇵  Japanese")],
        [PreferenceTag(type: .dietRestriction, detail: "🥕  Vegetarian")],
        [PreferenceTag(type: .priceRange, detail: "$-$$"),
         PreferenceTag(type: .cuisineType, detail: "🇨🇳  Chinese"),
         PreferenceTag(type: .cuisineType, detail: "🇹🇭 Thai")],
        [PreferenceTag(type: .transportation, detail: "📱 online")]]
    static let preferences: [[PreferenceTag]] = [
        [],
        [PreferenceTag(type: .dietRestriction, detail: "🍞  GF"),
         PreferenceTag(type: .transportation, detail: "📱 online"),
        PreferenceTag(type: .cuisineType, detail: "🇯🇵  Japanese")],
        [PreferenceTag(type: .dietRestriction, detail: "🥕  Vegetarian")],
        [PreferenceTag(type: .priceRange, detail: "$-$$"),
         PreferenceTag(type: .cuisineType, detail: "🇨🇳  Chinese"),
         PreferenceTag(type: .cuisineType, detail: "🇹🇭 Thai")],
        [PreferenceTag(type: .transportation, detail: "📱 online")]]
    static let names: [String] = ["You", "Kathleen", "Longxi", "Kai Yuan", "Selina"]
    static let foodOptions: [FoodOption] = [
        FoodOption(image: "food1", name: "Hong Shing", address: "195 Dundas St W, M5G 1C7\n$", preferences: [
                    PreferenceTag(type: .dietRestriction, detail: "🥕  Vegetarian"),
                    PreferenceTag(type: .transportation, detail: "📱 online")], ratings: "⭐️⭐️⭐️", review: "My roommate picked up dinner from Hong Shing last night. All I can say is that the food was fantastic! The general Tsao chicken had just the right amount of sauce and spice. The fried rice was perfect and the spring rolls were nice and crunchy and delicious. My roommate absolutely loved the chow mein and says that the amount of noodles, meat ..."),
        FoodOption(image: "food2", name: "Tenon Vegan Sushi", address: "487 Bloor St W, M5S 1Y2\n$-$$", preferences: [
                    PreferenceTag(type: .dietRestriction, detail: "🍞  GF"),
                    PreferenceTag(type: .transportation, detail: "🇯🇵  Japanese")], ratings: "⭐️⭐️⭐️⭐️", review: "We had a wonderful time at this Vegan/Vegetarian restaurant. Food was super delicious with lots of flavours and well prepared. Staff were friendly as well."),
        FoodOption(image: "food3", name: "Gyubee Japanese Grill", address: "157 Dundas St W, M5B 1E4\n$$$", preferences: [
                    PreferenceTag(type: .dietRestriction, detail: "🍞  GF"),
                    PreferenceTag(type: .transportation, detail: "🇯🇵  Japanese")], ratings: "⭐️⭐️⭐️⭐️⭐️", review: "It is pricey for sure, but the best quality of food! I loved short ribs so much! Everything comes in small plate and that is good because you won't be too full with side dishes. AYCE is for 2 hours. Excellent food, excellent drink and the service was great! I would come again for a special occasion..."),
        FoodOption(image: "food4", name: "Lai Wah Heen", address: "108 Chestnut St, M5G 1R3\n$$", preferences: [
                    PreferenceTag(type: .dietRestriction, detail: "🍞  GF"),
                    PreferenceTag(type: .transportation, detail: "🇨🇳  Chinese")], ratings: "⭐️⭐️⭐️⭐️", review: "We tried take out in the middle of the pandemic and it was excellent (Peking duck, seafood fried rice and two appetizers was enough food for a family of 4). Looking forward for them to being open again to try other things."),
        FoodOption(image: "food5", name: "Koh Samui", address: "640 Queen Street West, M6J 1E4\n$", preferences: [
                    PreferenceTag(type: .dietRestriction, detail: "🍞  GF"),
                    PreferenceTag(type: .transportation, detail: "🇹🇭 Thai")], ratings: "⭐️⭐️⭐️⭐️", review: "I tried them shortly after they opened business.  I received their flyer and was wanting to support local business."),
        FoodOption(image: "food6", name: "Aroy Urban Thai", address: "640 Queen Street West, M6J 1E4\n$", preferences: [
                    PreferenceTag(type: .dietRestriction, detail: "🍞  GF"),
                    PreferenceTag(type: .transportation, detail: "🇹🇭 Thai")], ratings: "⭐️⭐️⭐️", review: "The mango sweet sticky (purple) rice is a real treat! The chicken green curry was very delicious! Everyone finished it before catching a photo. A bit on the spicy side but but brought out the flavours and complemented the sweetness of the coconut The spring rolls are a recommended appetizer/side. Generous portions and ..."),
        FoodOption(image: "food7", name: "Salad King", address: "5 Elm St, M5G 1H1\n$", preferences: [
                    PreferenceTag(type: .dietRestriction, detail: "🥕  Vegetarian"),
                    PreferenceTag(type: .transportation, detail: "🇹🇭 Thai")], ratings: "⭐️⭐️⭐️⭐️⭐️", review: "This is the best Thai place I’ve visited in Toronto! The fried rice and curries are so delicious. I always go back for the fried rice because that’s my go-to. But I’ve heard all the menu items are pretty good. It’s also priced very decent it won’t break your wallet and you’ll get an amazing experience. There is lots of room to host for a large group!"),
        FoodOption(image: "food8", name: "Boat King of Thai Noodles", address: "70 Bay St, M5G 0A6\n$", preferences: [
                    PreferenceTag(type: .dietRestriction, detail: "🍞  GF"),
                    PreferenceTag(type: .transportation, detail: "🇹🇭 Thai")], ratings: "⭐️⭐️⭐️⭐️", review: "I recently had the pleasure of being downtown on Halloween night. It was a beautiful evening the streets were empty and I thought I would stop buy as I don't always get down town and I didn't unfortunately get time to eat but boat is a great restaurant and I always love out of many places in Toronto that weather inside or outside they have a great ..."),
        FoodOption(image: "food9", name: "Dumpling House", address: "328 Spadina Ave, M5T 2E7\n$", preferences: [
                    PreferenceTag(type: .transportation, detail: "🇨🇳  Chinese"),
                    PreferenceTag(type: .cuisineType, detail: "🥕  Vegetarian")], ratings: "⭐️⭐️⭐️⭐️", review: "We Loved the food and many options. With 6 different dishes they were all enjoyable. Quick ordering over the phone for take out. Dumpling House is the real deal. Absolutely delicious. It was our first time and we will see you again."),
        FoodOption(image: "food10", name: "Hokkaido Ramen Santouka", address: "91 Dundas St East, M5B 2C8\n$", preferences: [PreferenceTag(type: .transportation, detail: "🇯🇵  Japanese")], ratings: "⭐️⭐️⭐️⭐️⭐️", review: "I hope you don't need me to tell you that this place has great Ramen. What I can tell you about is how they are adapting to coronavirus. There are plastic screens between the tables which are more widely spaced. I ate in but it looks they are well set up for take- away. If you love ramen you should definitely visit Hokkaido.")
        
    ]
 }
