//
//  MatchesViewModel.swift
//  Stroll
//
//  Created by Sean Anderson on 16/09/25.
//

import Foundation

final class MatchesViewModel: ObservableObject {
    @Published var activeTab: MatchesTab = .chats
    
    @Published var highlights: [MatchesHighlight] = []
    @Published var chats: [MatchesChat] = []
    
    // MARK: - API Calls
    func fetchHome() {
        let dummyHighlights = [
            MatchesHighlight(age: 22, name: "Amanda", imageUrl: "https://www.shutterstock.com/image-photo/handsome-happy-african-american-bearded-600nw-2460702995.jpg", question: "What is your most favorite childhood memory?", highlight: true),
            MatchesHighlight(age: 31, name: "Malte", imageUrl: "https://img.freepik.com/free-photo/happy-young-male-teenager-guy-with-earphones_171337-8983.jpg?semt=ais_hybrid&w=740", question: "What is the most important quality in friendships to you?", highlight: true),
            MatchesHighlight(age: 29, name: "Bryan", imageUrl: "https://media.istockphoto.com/id/1471586970/photo/black-african-man-using-his-smart-phone-on-the-street-with-building-from-the-background-all.jpg?s=612x612&w=0&k=20&c=IsWzX0H5sTu8TfLo8EsJnMvmiS1mTrMZpn284ImPMMg=", question: "How would you spend time with your one?", highlight: false),
            MatchesHighlight(age: 22, name: "Amanda", imageUrl: "https://www.shutterstock.com/image-photo/handsome-happy-african-american-bearded-600nw-2460702995.jpg", question: "What is your most favorite childhood memory?", highlight: true),
            MatchesHighlight(age: 31, name: "Malte", imageUrl: "https://img.freepik.com/free-photo/happy-young-male-teenager-guy-with-earphones_171337-8983.jpg?semt=ais_hybrid&w=740", question: "What is the most important quality in friendships to you?", highlight: true),
            MatchesHighlight(age: 29, name: "Bryan", imageUrl: "https://media.istockphoto.com/id/1471586970/photo/black-african-man-using-his-smart-phone-on-the-street-with-building-from-the-background-all.jpg?s=612x612&w=0&k=20&c=IsWzX0H5sTu8TfLo8EsJnMvmiS1mTrMZpn284ImPMMg=", question: "How would you spend time with your one?", highlight: false),
        ]
        
        highlights = dummyHighlights
        
        let dummyChats = [
            MatchesChat(
                id: 0,
                unreadCount: 1,
                pinned: true,
                newChat: true,
                yourMove: false,
                unread: true,
                name: "Jessica",
                message: "",
                imageUrl: "https://www.shutterstock.com/image-photo/handsome-happy-african-american-bearded-600nw-2460702995.jpg",
                updateTime: "6.21 pm",
                messageType: "VOICE_NOTES"),
            MatchesChat(
                id: 1,
                unreadCount: 0,
                pinned: false,
                newChat: false,
                yourMove: true,
                unread: true,
                name: "Amanda",
                message: "Lol I love house music too",
                imageUrl: "https://img.freepik.com/free-photo/happy-young-male-teenager-guy-with-earphones_171337-8983.jpg?semt=ais_hybrid&w=740",
                updateTime: "6.21 pm",
                messageType: "MESSAGES"),
            MatchesChat(
                id: 2,
                unreadCount: 0,
                pinned: false,
                newChat: false,
                yourMove: false,
                unread: false,
                name: "Sila",
                message: "I love people there tbh, have you been?",
                imageUrl: "https://media.istockphoto.com/id/1471586970/photo/black-african-man-using-his-smart-phone-on-the-street-with-building-from-the-background-all.jpg?s=612x612&w=0&k=20&c=IsWzX0H5sTu8TfLo8EsJnMvmiS1mTrMZpn284ImPMMg=",
                updateTime: "Wed",
                messageType: "MESSAGES"),
            MatchesChat(
                id: 3,
                unreadCount: 4,
                pinned: false,
                newChat: false,
                yourMove: true,
                unread: false,
                name: "Marie",
                message: "Hahaha that's interesting, it does seem like people here are starting to like the update they made on the abandoned building",
                imageUrl: "https://media.istockphoto.com/id/1471586970/photo/black-african-man-using-his-smart-phone-on-the-street-with-building-from-the-background-all.jpg?s=612x612&w=0&k=20&c=IsWzX0H5sTu8TfLo8EsJnMvmiS1mTrMZpn284ImPMMg=",
                updateTime: "6.21pm",
                messageType: "MESSAGES"),
            MatchesChat(
                    id: 4,
                    unreadCount: 1,
                    pinned: true,
                    newChat: true,
                    yourMove: false,
                    unread: true,
                    name: "Jessica",
                    message: "",
                    imageUrl: "https://www.shutterstock.com/image-photo/handsome-happy-african-american-bearded-600nw-2460702995.jpg",
                    updateTime: "6.21 pm",
                    messageType: "VOICE_NOTES"),
                MatchesChat(
                    id: 5,
                    unreadCount: 0,
                    pinned: false,
                    newChat: false,
                    yourMove: true,
                    unread: true,
                    name: "Amanda",
                    message: "Lol I love house music too",
                    imageUrl: "https://img.freepik.com/free-photo/happy-young-male-teenager-guy-with-earphones_171337-8983.jpg?semt=ais_hybrid&w=740",
                    updateTime: "6.21 pm",
                    messageType: "MESSAGES"),
                MatchesChat(
                    id: 6,
                    unreadCount: 0,
                    pinned: false,
                    newChat: false,
                    yourMove: false,
                    unread: false,
                    name: "Sila",
                    message: "I love people there tbh, have you been?",
                    imageUrl: "https://media.istockphoto.com/id/1471586970/photo/black-african-man-using-his-smart-phone-on-the-street-with-building-from-the-background-all.jpg?s=612x612&w=0&k=20&c=IsWzX0H5sTu8TfLo8EsJnMvmiS1mTrMZpn284ImPMMg=",
                    updateTime: "Wed",
                    messageType: "MESSAGES"),
            MatchesChat(
                id: 7,
                unreadCount: 4,
                pinned: false,
                newChat: false,
                yourMove: true,
                unread: false,
                name: "Marie",
                message: "Hahaha that's interesting, it does seem like people here are starting to like the update they made on the abandoned building",
                imageUrl: "https://media.istockphoto.com/id/1471586970/photo/black-african-man-using-his-smart-phone-on-the-street-with-building-from-the-background-all.jpg?s=612x612&w=0&k=20&c=IsWzX0H5sTu8TfLo8EsJnMvmiS1mTrMZpn284ImPMMg=",
                updateTime: "6.21pm",
                messageType: "MESSAGES"),
            MatchesChat(
                    id: 8,
                    unreadCount: 1,
                    pinned: true,
                    newChat: true,
                    yourMove: false,
                    unread: true,
                    name: "Jessica",
                    message: "",
                    imageUrl: "https://www.shutterstock.com/image-photo/handsome-happy-african-american-bearded-600nw-2460702995.jpg",
                    updateTime: "6.21 pm",
                    messageType: "VOICE_NOTES"),
                MatchesChat(
                    id: 9,
                    unreadCount: 0,
                    pinned: false,
                    newChat: false,
                    yourMove: true,
                    unread: true,
                    name: "Amanda",
                    message: "Lol I love house music too",
                    imageUrl: "https://img.freepik.com/free-photo/happy-young-male-teenager-guy-with-earphones_171337-8983.jpg?semt=ais_hybrid&w=740",
                    updateTime: "6.21 pm",
                    messageType: "MESSAGES"),
                MatchesChat(
                    id: 10,
                    unreadCount: 0,
                    pinned: false,
                    newChat: false,
                    yourMove: false,
                    unread: false,
                    name: "Sila",
                    message: "I love people there tbh, have you been?",
                    imageUrl: "https://media.istockphoto.com/id/1471586970/photo/black-african-man-using-his-smart-phone-on-the-street-with-building-from-the-background-all.jpg?s=612x612&w=0&k=20&c=IsWzX0H5sTu8TfLo8EsJnMvmiS1mTrMZpn284ImPMMg=",
                    updateTime: "Wed",
                    messageType: "MESSAGES"),
        ]
        
        chats = dummyChats
    }
}
