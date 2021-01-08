//
//  Eat2GetherApp.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-07.
//

import SwiftUI

@main
struct Eat2GetherApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
