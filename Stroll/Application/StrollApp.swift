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
        
        // Bottom Bar Item Appearance
        let selectedColor = UIColor(
            red: 176/255,
            green: 155/255,
            blue: 205/255,
            alpha: 1
        )

        let unselectedColor = UIColor.gray
        
        let appearance = UITabBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = selectedColor
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor: selectedColor
        ]
        appearance.stackedLayoutAppearance.normal.iconColor = unselectedColor
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: unselectedColor
        ]

        UITabBar.appearance().standardAppearance = appearance
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
        
        UITabBar.appearance().tintColor = selectedColor
        UITabBar.appearance().unselectedItemTintColor = unselectedColor
    }
    
    var body: some Scene {
        WindowGroup {
            MainNavigationView(dependencyContainer: DependencyContainer.shared)
                .environmentObject(router)
        }
    }
}
