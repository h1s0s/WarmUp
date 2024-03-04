//
//  Detail.swift
//  WarmUp
//
//  Created by 한상선 on 3/4/24.
//

import SwiftUI

struct Detail: View {
    
    @Binding var isPresentesd: Bool
    //State와 Binding 변수 중요! State 프로퍼티를 다른 곳에서 받아야 할 때 사용하는 프로퍼티
    
    var body: some View {
        Text("모달페이지입니다2")
        Button {
            isPresentesd = false
        } label: {
            Text("닫기")
        }
    }
}

#Preview {
    Detail(isPresentesd: .constant(true))
}
