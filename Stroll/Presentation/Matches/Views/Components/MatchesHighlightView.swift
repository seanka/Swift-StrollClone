//
//  MatchesHighlight.swift
//  Stroll
//
//  Created by Sean Anderson on 16/09/25.
//

import Foundation
import SwiftUI

struct MatchesHighlightView: View {
    public var highlight: MatchesHighlight
    
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: highlight.imageUrl ?? "")) { image in
                image.resizable()
                    .clipped()
                    .scaledToFill()
                    .blur(radius: 80)
                    .frame(width: 220, height: 300)
            } placeholder: {
                Color.gray.opacity(0.3)
            }
            .cornerRadius(20)
            
            Text("Tap to answer")
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 110/255, green: 110/255, blue: 110/255))
            
            VStack(alignment: .center) {
                if highlight.highlight == true {
                    Text("They made a move!")
                        .foregroundColor(.white)
                        .padding(.vertical, 12)
                        .padding(.leading, 54)
                        .padding(.trailing, 24)
                        .font(.system(size: 12, weight: .semibold))
                        .background(
                            Capsule()
                                .fill(.black)
                        )
                }
                
                Spacer()
                
                Text("\(highlight.name ?? ""), \(highlight.age ?? 0)")
                    .padding(.bottom, 8)
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .bold))
                
                Text(highlight.question ?? "")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
                    
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 14)
        }.frame(width: 220, height: 300)
    }
}
