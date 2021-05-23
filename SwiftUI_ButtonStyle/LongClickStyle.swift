//
//  LongClickStyle.swift
//  SwiftUI_ButtonStyle
//
//  Created by izvern on 2021/05/23.
//

import SwiftUI

struct LongClickStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(Color.green)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            .onTapGesture {
                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                    haptic.impactOccurred()
            }
    }
}

struct LongClickStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("LongClick Click !!")
        }, label: {
            Text("롱클릭")
        })
        .buttonStyle(LongClickStyle())
    }
}
