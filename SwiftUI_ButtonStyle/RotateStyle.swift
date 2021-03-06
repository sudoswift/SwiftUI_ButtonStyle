//
//  LongClickStyle.swift
//  SwiftUI_ButtonStyle
//
//  Created by izvern on 2021/05/23.
//

import SwiftUI

struct RotateStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(Color.red)
            .cornerRadius(20)
            //rotationEffect modifier을 통해 버튼을 회전시킬 수 있다. degrees 파라미터로 몇도를 회전시킬지 정할 수 있고 anchor 파라미터로 어디를 기준으로 회전할지 정해줄 수 있다. ex) anchor: .bottom
            .rotationEffect(configuration.isPressed ? .degrees(90) : .degrees(0))
    }
}

struct RoateStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("LongClick Click !!")
        }, label: {
            Text("축소버튼")
        })
        .buttonStyle(RotateStyle())
    }
}
