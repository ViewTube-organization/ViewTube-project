//
//  XmarkButton.swift
//  ViewTubeApp
//
//  Created by Пользователь on 01.04.2024.
//

import SwiftUI

struct XmarkButton: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.black.opacity(0.25))
                .frame(width: 25)
            
            Image(systemName: "xmark")
                .foregroundColor(.white)
                .font(.system(size: 18))
                .clipShape(Circle())
        }
    }
}

struct XmarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XmarkButton()
    }
}
