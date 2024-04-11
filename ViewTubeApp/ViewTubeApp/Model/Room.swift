//
//  Room.swift
//  ViewTubeApp
//
//  Created by Пользователь on 01.04.2024.
//

import SwiftUI

struct Room: Hashable{
    var name: String = ""
    var isPublic: Bool = true
    var imageURL: String = ""
    var videoURL: String = ""
    var uniqueLink: String = ""
    var users: [User] = []
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(name)
            hasher.combine(videoURL)
        }
    
    static func == (lhs: Room, rhs: Room) -> Bool {
        return lhs.name == rhs.name && lhs.videoURL == rhs.videoURL
    }
}

class Rooms: ObservableObject{
    
    @Published var numberUsersLocalRoom: [User] = []
    @Published var localRooms: [Room] = []
    
    @Published var numberUsersPrivateRoom: [User] = []
    @Published var privateRooms: [Room] = []
    
}

