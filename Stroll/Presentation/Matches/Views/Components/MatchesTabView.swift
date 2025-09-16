//
//  MatchesTab.swift
//  Stroll
//
//  Created by Sean Anderson on 16/09/25.
//

import SwiftUI

struct MatchesTabView: View {
    @Binding var selectedTab: MatchesTab
    
    var body: some View {
        HStack(spacing: 18) {
            ForEach(MatchesTab.allCases, id: \.self) { tab in
                Button {
                    withAnimation(.spring()) {
                        selectedTab = tab
                    }
                } label: {
                    Text(tab.rawValue)
                        .font(.system(size: 20, weight: .bold))
                        .padding(.vertical, 8)
                        .padding(.horizontal, 14)
                        .underline(selectedTab == tab)
                        .foregroundColor(selectedTab == tab ? .white : Color.white.opacity(0.6))
                }
                .buttonStyle(.plain)
            }
        }
    }
}
