//
//  Blur.swift
//  SwiftUI_ButtonStyle
//
//  Created by izvern on 2021/05/23.
//

import SwiftUI

struct Blur: View {
    var body: some View {
        Button(action: {
            print("LongClick Click !!")
        }, label: {
            Text("블러버튼")
                .fontWeight(.bold)
        })
        .buttonStyle(BlurStyle())
    }
}

struct Blur_Previews: PreviewProvider {
    static var previews: some View {
        Blur()
    }
}
