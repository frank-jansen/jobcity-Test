//
//  jobsity_challengeApp.swift
//  jobsity challenge
//
//  Created by Frank Jansen on 28/11/22.
//

import SwiftUI

@main
struct jobsity_challengeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
