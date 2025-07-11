//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by Grace Shen on 2025-07-11.
//

import SwiftUI
import SwiftData

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
        
    }
}
