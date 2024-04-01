//
//  popupCreatRoomView.swift
//  ViewTubeApp
//
//  Created by Пользователь on 01.04.2024.
//

import SwiftUI

struct popupCreateRoomView: View {
    
    @Binding var popupCall: Bool
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    popupCall.toggle()
                }label: {
                    XmarkButton()
                }
            }
            .padding()
            
            Spacer()
            
            
            Text("Имя комнаты")
                .padding()
            Text("Выборка приватный или публичный")
                .padding()
            Text("Вставить ссылку URL на видео")
                .padding()
            Text("Сгенерировать ссылку на комнату")
                .padding()
            
            
            Spacer()
        }
        .frame(width: 300, height: 400)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 40)
        
    }
}

struct popupCreatRoomView_Previews: PreviewProvider {
    static var previews: some View {
        popupCreateRoomView(popupCall: .constant(false))
    }
}
