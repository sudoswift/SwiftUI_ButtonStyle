//
//  TabButton.swift
//  SwiftUI_ButtonStyle
//
//  Created by izvern on 2021/05/23.
//

import SwiftUI

struct TabButton: View {
    var body: some View {
        Button(action: {
            //Button 에서 햅틱 피드백 설정하려면 아래 방법 실행
//            let impactMed = UIImpactFeedbackGenerator(style: .medium)
//            impactMed.impactOccurred()
        }, label: {
            Text("탭")
                .fontWeight(.bold) // 어떤 이유인지는 모르겠지만 custom ButtonStyle 에서 fontWeight를 넣을 수는 없다.
        })
        .buttonStyle(TabButtonStyle())
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        TabButton()
    }
}
