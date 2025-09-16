//
//  MatchesChatView.swift
//  Stroll
//
//  Created by Sean Anderson on 16/09/25.
//

import SwiftUI

struct MatchesChatView: View {
    public var chat: MatchesChat
    
    var body: some View {
        HStack {
            // Profile Picture
            AsyncImage(url: URL(string: chat.imageUrl ?? "")) { image in
                image.resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)
            } placeholder: {
                Circle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 40, height: 40)
            }
            
            // Sender, Last Message
            VStack(alignment: .leading) {
                HStack(spacing: 12) {
                    Text(chat.name ?? "")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                    
                    // Sender Tag
                    if chat.newChat == true {
                        Text("· New Chat")
                            .padding(.vertical, 4)
                            .padding(.horizontal, 8)
                            .foregroundColor(.white)
                            .font(.system(size: 10, weight: .bold))
                            .background(
                                Capsule()
                                    .fill(Color(red: 176/255, green: 155/255, blue: 205/255))
                            )
                    }
                    
                    if chat.newChat == false, chat.yourMove == true {
                        Text("Your Move")
                            .padding(.vertical, 4)
                            .padding(.horizontal, 8)
                            .foregroundColor(.white)
                            .font(.system(size: 10, weight: .bold))
                            .background(
                                Capsule()
                                    .fill(Color.gray.opacity(0.6))
                            )
                    }
                }
                
                Text(chat.message ?? "")
                    .font(.system(size: 14, weight: chat.unread == true ? .semibold : .regular))
                    .foregroundColor(chat.unread == true ? .white : .gray)
                    .lineLimit(2)
            }
            
            Spacer()
            
            // Time, Icon
            VStack(alignment: .trailing) {
                Text(chat.updateTime ?? "")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(chat.unread == true ? Color(red: 176/255, green: 155/255, blue: 205/255) : .white)
                
                if chat.pinned == true {
                    Text("★")
                        .padding(.vertical, 2)
                        .padding(.horizontal, 4)
                        .foregroundColor(.black)
                        .font(.system(size: 10, weight: .bold))
                        .background(
                            Circle()
                                .fill(Color(red: 176/255, green: 155/255, blue: 205/255))
                        )
                }
                
                if chat.pinned == false, (chat.unreadCount ?? 0) > 0 {
                    Text(String(chat.unreadCount ?? 0))
                        .padding(.vertical, 2)
                        .padding(.horizontal, 6)
                        .foregroundColor(.black)
                        .font(.system(size: 12, weight: .bold))
                        .background(
                            Circle()
                                .fill(Color(red: 176/255, green: 155/255, blue: 205/255))
                        )
                }
            }
        }
    }
}
