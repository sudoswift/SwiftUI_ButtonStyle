//
//  TabButton.swift
//  SwiftUI_ButtonStyle
//
//  Created by izvern on 2021/05/23.
//

import SwiftUI

struct TabButtonStyle: ButtonStyle {
    //struct를 View 가 아닌 ButtonStyle 로 바꿔주고 makeBody를 치면 자동완성으로 바로 아래줄처럼 커스텀 버튼 스타일을 만들 수 있게 된다.
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label // configuration을 통해 버튼의 속성을 꾸밀 수 있다.
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
        // 어떤 이유인지는 모르겠지만 fontWeight는 가져올 수 없다.
            //Button이 아닌 다른 것을 클릭했을 때 햅틱 피드백을 발생시키려면 다음과 같이 onTapGesture를 사용한다
            .onTapGesture {
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
            }
    }
}
struct TabButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("button clicked")
        }, label: {
            Text("탭")
        })
        .buttonStyle(TabButtonStyle())
    }
}
