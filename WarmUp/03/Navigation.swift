//
//  Navigation.swift
//  WarmUp
//
//  Created by 한상선 on 3/4/24.
//

import SwiftUI

struct Navigation: View {
    
    let titles = ["디테일뷰로 이동하기", "디테일뷰로 이동하기2"]
    let discriptions = ["데스티네이션입니다", "데스티네이션입니다2"]
    
    @State var showModal = false
    
    var body: some View {
        //중요한 개념! 네비게이션스택은 네비게이션이 어디로 갔을지, 어디로 갔는지 기록을 해주는 녀석. 어디론가 보내주지는 않슴. 접시가 차곡차곡 쌓이듯이 쌓임.
        //스택처럼 쌓이게 도와주는 것이 네비게이션링크
        NavigationStack {
            List {
                ForEach([0, 1], id: \.self) { index in
                    NavigationLink{
                        Text(titles[index])
                    } label: {
                        Text(discriptions[index])
                    }
                }
            }
            .toolbar {
                ToolbarItem{
                    Button {
                        showModal = true
                    } label : {
                            Text("add")
                    }
                }
            }
            .sheet(isPresented: $showModal, content: {
                Text("아이템 추가 페이지입니다.")
            })
            .navigationTitle("네비게이션")
        }
    }
}

#Preview {
    Navigation()
}
