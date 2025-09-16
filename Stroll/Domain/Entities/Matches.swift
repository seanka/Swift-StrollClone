//
//  Matches.swift
//  Stroll
//
//  Created by Sean Anderson on 16/09/25.
//

struct MatchesHighlight: Codable {
    var age: Int?
    var name: String?
    var imageUrl: String?
    var question: String?
    var highlight: Bool?
}

struct MatchesChat: Codable {
    var id: Int?
    var unreadCount: Int?
    var pinned: Bool?
    var newChat: Bool?
    var yourMove: Bool?
    var unread: Bool?
    var name: String?
    var message: String?
    var imageUrl: String?
    var updateTime: String?
    var messageType: String?
}
