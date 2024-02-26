//
//  ContentView.swift
//  WarmUp
//
//  Created by 한상선 on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
            Image(systemName: "globe")
                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .multilineTextAlignment(.leading)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
