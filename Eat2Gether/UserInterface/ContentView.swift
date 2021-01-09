//
//  ContentView.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-07.
//

import SwiftUI
import CoreData

let defaults = UserDefaults.standard
struct ContentView: View {
    @State private var isShown: Bool = !defaults.bool(forKey: "userName")
    var body: some View {
        HomeScreenView()
            .fullScreenCover(isPresented: $isShown) {
                UserNameView(isShown: $isShown)
            }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
