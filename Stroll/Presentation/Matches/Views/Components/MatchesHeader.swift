//
//  MatchesHeader.swift
//  Stroll
//
//  Created by Sean Anderson on 16/09/25.
//

import SwiftUI
import Kingfisher

struct MatchesHeader: View {
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                HStack {
                    Text("Your Turn")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold))
                    
                    Text("7")
                        .padding(6)
                        .foregroundColor(.black)
                        .font(.system(size: 12, weight: .bold))
                        .background(
                            Circle()
                                .fill(Color(red: 176/255, green: 155/255, blue: 205/255))
                        )
                }
                
                Text("Make your move, they are waiting")
                    .font(.system(size: 14))
                    .italic()
                    .foregroundStyle(Color(red: 169/255, green: 174/255, blue: 182/255))
            }
            
            Spacer()
            
            ZStack {
                AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyZxt3SRlGCb8f3HOKAm8PbAt4WBAhHvQbzQ&s")) { image in
                    image.resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 50, height: 50)
                        .shadow(color: Color(red: 176/255, green: 155/255, blue: 205/255, opacity: 0.4), radius: 8)
                        .shadow(color: Color(red: 176/255, green: 155/255, blue: 205/255, opacity: 0.6), radius: 20)
                } placeholder: {
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 50, height: 50)
                }
                
                Circle()
                    .stroke(
                        AngularGradient(
                            gradient: Gradient(stops: [
                                .init(color: .green, location: 0.00),
                                .init(color: .green, location: 0.75),
                                .init(color: .gray,  location: 0.75),
                                .init(color: .gray,  location: 1.00)
                            ]),
                            center: .center
                        ),
                        lineWidth: 4
                    )
                    .frame(width: 60, height: 60)
                    .rotationEffect(.degrees(90))
                
                Text("90")
                    .foregroundColor(.white)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 14)
                    .font(.system(size: 12, weight: .bold))
                    .background(
                        Capsule()
                            .fill(Color(red: 19/255, green: 22/255, blue: 30/255))
                    ).offset(y: 28)
            }
        }.frame(height: 60)
            .background(.black)
    }
}

#Preview {
    MatchesHeader()
}
