//
//  popupCreatRoomView.swift
//  ViewTubeApp
//
//  Created by Пользователь on 01.04.2024.
//

import SwiftUI

struct popupCreatRoomView: View {
    var body: some View {
        VStack{
            Text("Имя комнаты")
                .padding()
            Text("Выборка приватный или публичный")
                .padding()
            Text("Вставить ссылку URL на видео")
                .padding()
            Text("Сгенерировать ссылку на комнату")
                .padding()
            
        }
        .frame(width: 300, height: 400)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
    }
}

struct popupCreatRoomView_Previews: PreviewProvider {
    static var previews: some View {
        popupCreatRoomView()
    }
}
