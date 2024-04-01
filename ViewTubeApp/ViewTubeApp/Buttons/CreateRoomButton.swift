//
//  CreateRoomButton.swift
//  ViewTubeApp
//
//  Created by Пользователь on 01.04.2024.
//

import SwiftUI

struct CreateRoomButton: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.black.opacity(0.25))
                .frame(width: 60)
            
            Image(systemName: "plus")
                .foregroundColor(.white)
                .font(.system(size: 40))
                .clipShape(Circle())
        }
    }
}

struct CreateRoomButton_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoomButton()
    }
}
