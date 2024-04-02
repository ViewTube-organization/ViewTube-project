//
//  MockData.swift
//  ViewTubeApp
//
//  Created by Пользователь on 02.04.2024.
//

import SwiftUI

struct MockData{
    static let sampleRoom = Room(name: "",
                                 isPublic: false,
                                 imageURL: "",
                                 videoURL: "",
                                 uniqueLink: "",
                                 users: [])
    
    static let sampleUser = User(firstName: "Ivan",
                                 lastName: "Ivanov",
                                 email: "Ivanov@gmail.com",
                                 imageURL: "Person")
    
    static let exampleRoom = Room(name: "name room",
                                 isPublic: false,
                                 imageURL: "imageErrorFilm",
                                 videoURL: "https://www.youtube.com/watch?v=EeARyFrZsnU&ab_channel=MerionAcademy",
                                 uniqueLink: "",
                                 users: [sampleUser, sampleUser, sampleUser])
}
