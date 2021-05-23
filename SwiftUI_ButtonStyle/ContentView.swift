//
//  ContentView.swift
//  SwiftUI_ButtonStyle
//
//  Created by izvern on 2021/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20.0){
            TabButton()
            LongClick()
            Smaller()
            Rotate()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
