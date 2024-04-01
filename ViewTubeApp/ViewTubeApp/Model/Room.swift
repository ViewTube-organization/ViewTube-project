//
//  Room.swift
//  ViewTubeApp
//
//  Created by Пользователь on 01.04.2024.
//

import SwiftUI

class Room: Decodable{
    let name: String
    let isPublic: Bool
    let imageURL: String
    let videoURL: String
    let uniqueLink: String
    var users: [User]
    
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
