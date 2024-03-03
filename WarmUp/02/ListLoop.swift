//
//  ListLoop.swift
//  WarmUp
//
//  Created by 한상선 on 3/3/24.
//

import SwiftUI

struct ListLoop: View {
    var fruits = ["Apple", "Banana", "Cherry", "Durian", "Elder Berry"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                }
            }
            .navigationTitle("Fruist List")
        }
    }
}

#Preview {
    ListLoop()
}
