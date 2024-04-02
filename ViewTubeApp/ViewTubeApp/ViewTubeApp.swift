//
//  ViewTubeAppApp.swift
//  ViewTubeApp
//
//  Created by Пользователь on 31.03.2024.
//

import SwiftUI

@main
struct ViewTubeApp: App {
    
    var rooms = Rooms()
    var body: some Scene {
        WindowGroup {
            TabViewViewTube()
                .environmentObject(rooms)
        }
    }
}
