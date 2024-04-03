//
//  popupCreatRoomView.swift
//  ViewTubeApp
//
//  Created by Пользователь on 01.04.2024.
//

import SwiftUI

struct popupCreateRoomView: View {
    
    @EnvironmentObject var rooms: Rooms
    @Binding var popupCall: Bool
    @State var room = MockData.sampleRoom
    
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
            
            Form{
                Section{
                    TextField("Name room", text: $room.name)
                    TextField("Url video", text: $room.videoURL)
                    Toggle("Public room", isOn: $room.isPublic)
                }
            }
            
            
            Spacer()
            
            Button{
                
                room.isPublic ? rooms.localRooms.insert(room, at: 0) : rooms.privateRooms.insert(room, at: 0)
                
                rooms.privateRooms[0].users.append(MockData.sampleUser)

                popupCall.toggle()
                
            }label:{
                Text("Create room")
            }
            .buttonStyle(.bordered)
            .tint(.green)
            .controlSize(.large)
            .padding()
            
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
