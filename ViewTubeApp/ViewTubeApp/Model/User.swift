//
//  User.swift
//  ViewTubeApp
//
//  Created by Пользователь on 01.04.2024.
//

import SwiftUI

struct User: Hashable{
    var firstName = ""
    var lastName = ""
    var email = ""
    var imageURL = ""
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(firstName)
            hasher.combine(imageURL)
        }
    
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.imageURL == rhs.imageURL
    }
}
