//
//  DependencyContainer.swift
//  Stroll
//
//  Created by Sean Anderson on 16/09/25.
//

import Foundation

final class DependencyContainer {
    static let shared = DependencyContainer()
    
    func provideMatchesViewModel() -> MatchesViewModel {
        return MatchesViewModel()
    }
}
