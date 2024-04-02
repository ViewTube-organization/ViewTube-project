//
//  Room.swift
//  ViewTubeApp
//
//  Created by Пользователь on 01.04.2024.
//

import SwiftUI

struct Room{
    var name: String = ""
    var isPublic: Bool = true
    var imageURL: String = ""
    var videoURL: String = ""
    var uniqueLink: String = ""
    var users: [User] = []
}

class LocalRooms: ObservableObject{
    
    @Published var numberUsers: [User] = []
    @Published var rooms: [Room] = []
    
    func addRoom(_ room: Room){
        rooms.insert(room, at: 0)
    }
    
    func deleteRoom(_ offsets: IndexSet){
        rooms.remove(atOffsets: offsets)
    }
}

class PrivateRooms: ObservableObject{
    
    @Published var numberUsers: [User] = []
    @Published var rooms: [Room] = []
    
    func addRoom(_ room: Room){
        rooms.insert(room, at: 0)
    }
    
    func deleteRoom(_ offsets: IndexSet){
        rooms.remove(atOffsets: offsets)
    }
}
