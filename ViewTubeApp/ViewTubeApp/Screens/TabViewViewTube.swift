//
//  ContentView.swift
//  ViewTubeApp
//
//  Created by Пользователь on 31.03.2024.
//

import SwiftUI

struct TabViewViewTube: View {
    var body: some View {
        
        TabView{
            LocalRoomView()
                .tabItem{ Label("Local room", systemImage: "globe") }
            
            PrivateRoomView()
                .tabItem{ Label("Private room", systemImage: "house") }
            
            MessageView()
                .tabItem{ Label("Message", systemImage: "message") }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewViewTube()
    }
}
