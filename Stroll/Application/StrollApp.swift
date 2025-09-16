//
//  StrollApp.swift
//  Stroll
//
//  Created by Sean Anderson on 16/09/25.
//

import SwiftUI

@main
struct StrollApp: App {
    @StateObject private var router: AppRouter = AppRouter()
    
    var body: some Scene {
        WindowGroup {
            MainNavigationView()
                .environmentObject(router)
        }
    }
}
