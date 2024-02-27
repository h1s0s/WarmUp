//
//  SimpleView.swift
//  WarmUp
//
//  Created by 한상선 on 2/27/24.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        Image(systemName: "pencil")
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 150)
        
        Text("헤드라인 입니다")
            .font(.headline)
            .padding(15)
        
        Text("서브헤드라인 입니다")
            .font(.subheadline)
            .padding(15)
        
        Text("바디입니다")
            .font(.body)
            .padding(15)
        
        Button{
            
        } label: {
            Text("Click Me")
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .bold()
            
        }
    }
}

#Preview {
    SimpleView()
}
