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
                CardsView()
                    .tabItem { Label("Cards", systemImage: "square.and.arrow.up") }
                    .tag(AppRoute.cards)
                
                BonfireView()
                    .tabItem { Label("Bonfire", systemImage: "square.and.arrow.up") }
                    .tag(AppRoute.bonfire)
                
                MatchesView()
                    .tabItem { Label("Matches", systemImage: "square.and.arrow.up") }
                    .tag(AppRoute.matches)
                
                ProfileView()
                    .tabItem { Label("Profile", systemImage: "square.and.arrow.up") }
                    .tag(AppRoute.profile)
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
