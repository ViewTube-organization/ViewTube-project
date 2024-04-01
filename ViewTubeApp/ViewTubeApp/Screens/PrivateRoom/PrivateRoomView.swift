//
//  PrivateRoomView.swift
//  ViewTubeApp
//
//  Created by Пользователь on 31.03.2024.
//

import SwiftUI

struct PrivateRoomView: View {
    var body: some View {
        Button{
            print("create room")
        }label:{
            CreateRoomButton()
        }
    }
}

struct PrivateRoomView_Previews: PreviewProvider {
    static var previews: some View {
        PrivateRoomView()
    }
}
