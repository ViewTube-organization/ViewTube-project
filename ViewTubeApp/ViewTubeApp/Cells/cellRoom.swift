//
//  cellRoom.swift
//  ViewTubeApp
//
//  Created by Пользователь on 03.04.2024.
//

import SwiftUI

struct cellRoom: View {
    
    let room: Room = MockData.exampleRoom
    
    var body: some View {
        HStack{
            Image(room.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                
            Spacer()
            
            VStack{
                Text(room.name)
                    .font(.system(size: 30, weight: .light) )
                HStack{
                    ForEach (room.users, id: \.self){user in
                        Image(user.imageURL)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .cornerRadius(.infinity)
                    }
                }
            }
            
            Spacer()
            
            
        }
        .frame(width: 350, height: 100)
        .cornerRadius(.infinity)
    }
}

struct cellRoom_Previews: PreviewProvider {
    static var previews: some View {
        cellRoom()
    }
}
