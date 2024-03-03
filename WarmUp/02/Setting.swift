//
//  Setting.swift
//  WarmUp
//
//  Created by 한상선 on 3/3/24.
//

import SwiftUI

struct SettingInfo:Hashable {
    let title: String
    let systemName: String
    let backgroundColor: Color
    let foregroundColor: Color = .white
}
struct Setting: View {
    
    let data: [[SettingInfo]] = [
        [SettingInfo(title: "스크린타임", systemName: "hourglass", backgroundColor: .purple)],
        [
            SettingInfo(title: "일반", systemName: "gear", backgroundColor: .gray),
            SettingInfo(title: "손쉬운사용", systemName: "person.crop.circle", backgroundColor: .blue),
            SettingInfo(title: "개인정보 보호 및 보안", systemName: "hand.raised.fill", backgroundColor: .blue)
        ],
        [SettingInfo(title: "암호", systemName: "key.fill", backgroundColor: .gray)]
    ]
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(data, id:\.self){ section in
                    Section{
                        ForEach(section, id: \.self) { item in
                            Label {
                                Text(item.title)
                            } icon : {
                                Image(systemName: item.systemName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:20, height:20)
                                    .padding(.all, 7)
                                    .background(item.backgroundColor)
                                    .foregroundColor(item.foregroundColor)
                                    .cornerRadius(6)
                                
                            }
                        }
                    }
                }
            }.navigationTitle("설정")
        }
    }
}

#Preview {
    Setting()
}
