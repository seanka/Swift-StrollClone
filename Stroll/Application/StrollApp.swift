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
    
    init() {
        UITabBar.appearance().barTintColor = .black
        UITabBar.appearance().backgroundColor = .black
        UINavigationBar.appearance().barTintColor = .black
        UINavigationBar.appearance().backgroundColor = .black
        
    }
    
    var body: some Scene {
        WindowGroup {
            MainNavigationView(dependencyContainer: DependencyContainer.shared)
                .environmentObject(router)
        }
    }
}
