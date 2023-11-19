//
//  NavigationApp.swift
//  Navigation
//
//  Created by Daniel Mandea on 31.05.2023.
//

import SwiftUI

@main
struct NavigationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
