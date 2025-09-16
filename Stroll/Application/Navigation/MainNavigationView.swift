//
//  MainNavigationView.swift
//  Stroll
//
//  Created by Sean Anderson on 16/09/25.
//

import SwiftUI

struct MainNavigationView: View {
    @EnvironmentObject var router: AppRouter
    
    var body: some View {
        NavigationStack(path: $router.path) {
            TabView(selection: $router.route) {
                
            }
            .navigationDestination(for: AppRoute.self) { route in
                switch route {
                default:
                    EmptyView()
                }
            }
        }
    }
}
