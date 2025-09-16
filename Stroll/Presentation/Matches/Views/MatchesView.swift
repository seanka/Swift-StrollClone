//
//  MatchesView.swift
//  Stroll
//
//  Created by Sean Anderson on 16/09/25.
//

import SwiftUI

struct MatchesView: View {
    @StateObject var viewModel: MatchesViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // Header Section
                MatchesHeader()
                    .padding(.bottom, 20)
                
                // Highlight Section
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(viewModel.highlights.indices, id: \.self) { index in
                            MatchesHighlightView(highlight: viewModel.highlights[index])
                        }
                    }
                }
                .padding(.bottom, 20)
                
                // Chats Section
                // Tabs
                MatchesTabView(selectedTab: $viewModel.activeTab)
                Text("The ice is broken. Time to hit off")
                    .font(.system(size: 14))
                    .italic()
                    .foregroundStyle(Color(red: 169/255, green: 174/255, blue: 182/255))
                    .padding(.bottom, 10)
                // Chat
                VStack(spacing: 8) {
                    ForEach(viewModel.chats.indices, id: \.self) { index in
                        MatchesChatView(chat: viewModel.chats[index])
                        
                        // Divider
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 1)
                            .frame(maxWidth: .infinity)
                    }
                }
            }
            .padding(.horizontal, 18)
            .background(Color.black.ignoresSafeArea())
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .preferredColorScheme(.dark)
            .onAppear {
                viewModel.fetchHome()
            }
        }
    }
}

#Preview {
    MatchesView(viewModel: DependencyContainer.shared.provideMatchesViewModel())
}
