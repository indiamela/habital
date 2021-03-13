//
//  HabitalApp.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/13.
//

import SwiftUI

@main
struct HabitalApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
