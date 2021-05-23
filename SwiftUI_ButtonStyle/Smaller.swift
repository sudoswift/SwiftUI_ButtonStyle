//
//  Smaller.swift
//  SwiftUI_ButtonStyle
//
//  Created by izvern on 2021/05/23.
//

import SwiftUI

struct Smaller: View {
        var body: some View {
            Button(action: {
                print("LongClick Click !!")
            }, label: {
                Text("회전버튼")
                    .fontWeight(.bold)
            })
            .buttonStyle(SmallerStyle())
    }
}

struct Smaller_Previews: PreviewProvider {
    static var previews: some View {
        Smaller()
    }
}
