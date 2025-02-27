//
//  ViperProjectApp.swift
//  ViperProject
//
//  Created by Fatih Kenarda on 10.02.2025.
//

import SwiftUI

@main
struct ViperProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(presenter: UserPresenter())
        }
    }
}
