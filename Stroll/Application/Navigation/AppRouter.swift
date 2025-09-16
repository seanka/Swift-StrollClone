//
//  AppRouter.swift
//  Stroll
//
//  Created by Sean Anderson on 16/09/25.
//

import Foundation

final class AppRouter: ObservableObject {
    @Published var route: AppRoute = .matches
    @Published var path: [AppRoute] = []
    
}
