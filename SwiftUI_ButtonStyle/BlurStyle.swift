//
//  BlurStyle.swift
//  SwiftUI_ButtonStyle
//
//  Created by izvern on 2021/05/23.
//

import SwiftUI

struct BlurStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(Color.black)
            .cornerRadius(20)
            .blur(radius: configuration.isPressed ? 5 : 0)
    }
}

struct BlurStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("LongClick Click !!")
        }, label: {
            Text("블러버튼")
                .fontWeight(.bold)
        })
        .buttonStyle(BlurStyle())

    }
}
