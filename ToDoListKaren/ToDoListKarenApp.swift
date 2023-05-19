//
//  ToDoListKarenApp.swift
//  ToDoListKaren
//
//  Created by Karen Gutierrez on 5/18/23.
//

import SwiftUI

@main
struct ToDoListKarenApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)

        }
    }
}
