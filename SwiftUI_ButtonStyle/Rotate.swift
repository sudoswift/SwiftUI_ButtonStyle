//
//  Rotate.swift
//  SwiftUI_ButtonStyle
//
//  Created by izvern on 2021/05/23.
//

import SwiftUI

struct Rotate: View {
    var body: some View {
        Button(action: {
            print("LongClick Click !!")
        }, label: {
            Text("롱클릭")
                .fontWeight(.bold)
        })
        .buttonStyle(RotateStyle())
    }
}

struct Rotate_Previews: PreviewProvider {
    static var previews: some View {
        Rotate()
    }
}
