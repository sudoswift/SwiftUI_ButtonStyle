# SwiftUI_ButtonStyle
 - [#16](https://www.youtube.com/watch?v=7j-aaNVX9MQ) SwiftUI Custom Button Style 
 - <img src="https://user-images.githubusercontent.com/83416999/119266288-24137980-bc25-11eb-99d3-a4ec5fd7634b.png" width="200rem">


### 설명
 - 1번 파란배경의 탭 버튼은 scaleEffect modifier 를 통해 isPressed 시 크기가 1.3 만큼 커지게 만들었고, .ontapGesture modifier를 통해 .light 한 haptic feedback 이 오도록 설정했다.
 - 2번 초록배경의 롱클릭 버튼 역시 1번과 마찬가지로 scaleEffect modifier 를 사용했고, ontapGesture modifier를 통해 .heavy한 haptic feedback이 오도록 설정했다.
 - 3번 보라색배경의 축소버튼은 saleEffect modifier 를 통해 isPressed 시 크기가 0.5만큼 작아지게 만들었다.
 - 4번 빨간색배경의 회전버튼은 rotationEffect modifier 를 통해 isPressed 시 degree가 90도로 회전하게 만들었다. // anchor 파라미터를 통해 어디를 기준으로 회전할 지 정할 수 있다.
 - 5번 검은배경의 블러버튼은 blur modifier를 통해 isPressed 시 radius 가 5.0이 되도록 설정해주었다.
