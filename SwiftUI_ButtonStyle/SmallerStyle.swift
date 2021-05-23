//
//  SmallerStyle.swift
//  SwiftUI_ButtonStyle
//
//  Created by izvern on 2021/05/23.
//

import SwiftUI

struct SmallerStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(Color.red)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0 )
            .opacity(configuration.isPressed ? 0.8 : 1.0)
    }
}

struct SmallerStyle_Previews: PreviewProvider {
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
