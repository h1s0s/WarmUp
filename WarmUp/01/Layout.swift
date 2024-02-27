//
//  SwiftUIView.swift
//  WarmUp
//
//  Created by 한상선 on 2/27/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width:150)
            Text("Text Element 1")
                .font(.headline)
                .padding()
            
            Text("Text Element 2")
                .font(.subheadline)
                .padding()
            
            Text("Text Element 3")
                .font(.body)
                .padding()
        }

        HStack{
            MyButton(buttonTitle: "button1", buttonColor: .blue)
            MyButton(buttonTitle: "button2", buttonColor: .green)
        }
        Button{
            
        } label: {
            VStack{
                Image(systemName: "arrowshape.right.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width:50)
                Text("Complex Button")
            }
            .padding()
            .background(.orange)
            .foregroundColor(.white)
            .cornerRadius(10)
            .bold()
        }
    }
}

//View에 대한 구조체를 정의하여 사용할 수도 있다 !
struct MyButton: View {
    var buttonTitle: String
    var buttonColor: Color
    
    var body: some View {
        Button{
            
        } label: {
            Text(buttonTitle)
                .padding()
                .background(buttonColor)
                .foregroundColor(.white)
                .cornerRadius(10)
                .bold()
        }
    }
}

#Preview {
    SwiftUIView()
}
