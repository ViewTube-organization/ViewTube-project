//
//  PrivateRoomView.swift
//  ViewTubeApp
//
//  Created by Пользователь on 31.03.2024.
//

import SwiftUI

struct PrivateRoomView: View {
    
    @EnvironmentObject var rooms: Rooms
    @State var popupCall: Bool = false
    
    var body: some View {
        ZStack{
            ZStack{
                NavigationView{
                    List{
                        ForEach (rooms.privateRooms, id: \.self){room in
                            Text(room.name)
                            
                        }
                    }
                    .navigationTitle("Приватные комнаты")
                }
                .blur(radius: popupCall ? 20 : 0)
                
                Button{
                    popupCall.toggle()
                }label:{
                    CreatePopupViewButton()
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .trailing)
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
            
            if popupCall{
                popupCreateRoomView(popupCall: $popupCall)
            }
        }
        
    }
}

struct PrivateRoomView_Previews: PreviewProvider {
    static var previews: some View {
        PrivateRoomView()
    }
}
