//
//  LongClick.swift
//  SwiftUI_ButtonStyle
//
//  Created by izvern on 2021/05/23.
//

import SwiftUI

struct LongClick: View {
    var body: some View {
        Button(action: {
            print("LongClick Click !!")
        }, label: {
            Text("롱클릭")
                .fontWeight(.bold)
        })
        .buttonStyle(LongClickStyle())
    }
}

struct LongClick_Previews: PreviewProvider {
    static var previews: some View {
        LongClick()
    }
}
