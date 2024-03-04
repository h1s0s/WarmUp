//
//  Modal.swift
//  WarmUp
//
//  Created by 한상선 on 3/4/24.
//

import SwiftUI

struct Modal: View {

    @State var showModal: Bool = false
    
    var body: some View {
        VStack{
            Text("메인 페이지 입니다.")
            Button {
                showModal = true
            } label: {
                Text("모달 화면 전환")
            }
        }
        .sheet(isPresented:$showModal){ //모달
            Detail(isPresentesd: $showModal)
        }
    }
}

#Preview {
    Modal()
}
