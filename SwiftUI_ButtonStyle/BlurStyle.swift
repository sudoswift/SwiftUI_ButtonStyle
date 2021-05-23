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
            .background(Color.purple)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0 )
            //opacity modifier를 통해 isPressed 시 버튼의 투명도를 낮추는 애니매이션 효과를 준다.
            .opacity(configuration.isPressed ? 0.5 : 1.0)
    }
}

struct BlurStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("LongClick Click !!")
        }, label: {
            Text("축소버튼")
                .fontWeight(.bold)
        })
        .buttonStyle(SmallerStyle())

    }
}
