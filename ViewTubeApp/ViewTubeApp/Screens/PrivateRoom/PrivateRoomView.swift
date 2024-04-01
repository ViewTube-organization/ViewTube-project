//
//  PrivateRoomView.swift
//  ViewTubeApp
//
//  Created by Пользователь on 31.03.2024.
//

import SwiftUI

struct PrivateRoomView: View {
    
    @State var popupCall: Bool = false
    
    var body: some View {
        ZStack{
            NavigationView{
                Button{
                    popupCall.toggle()
                }label:{
                    CreateRoomButton()
                }
            }
            .blur(radius: popupCall ? 20 : 0)
            
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
