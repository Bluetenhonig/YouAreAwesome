//
//  YouAreAwesomeApp.swift
//  YouAreAwesome
//
//  Created by Linda Samsinger on 16.02.25.
//

import SwiftUI

@main
struct YouAreAwesomeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
