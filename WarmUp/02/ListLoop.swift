//
//  ListLoop.swift
//  WarmUp
//
//  Created by 한상선 on 3/3/24.
//

import SwiftUI

struct ListLoop: View {
    var favoriteFruits = [
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
        Fruit(name: "Banana", matchFruitName: "Banana", price: 3000),
        Fruit(name: "Cherry", matchFruitName: "Durian", price: 4000),
        Fruit(name: "Durian", matchFruitName: "ElderBery", price: 8000),
    ]
    var fruits = ["Apple", "Banana", "Cherry", "Durian", "Elder Berry"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(favoriteFruits, id: \.self) { fruit in
                    HStack {
                        Text(fruit.name)
                        Text(fruit.matchFruitName)
                        Text("\(fruit.price)")
                    }
                }
            }
            .navigationTitle("Fruist List")
        }
    }
}

struct Fruit: Hashable { //Hashable 반복될 수 있는
    let name: String
    let matchFruitName: String
    let price: Int
}
#Preview {
    ListLoop()
}
