//
//  ListLoop.swift
//  WarmUp
//
//  Created by 한상선 on 3/3/24.
//

import SwiftUI

struct ListLoop: View {
    @State var favoriteFruits = [
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
        Fruit(name: "Banana", matchFruitName: "Banana", price: 3000),
        Fruit(name: "Cherry", matchFruitName: "Durian", price: 4000),
        Fruit(name: "Durian", matchFruitName: "ElderBery", price: 8000),
    ]
    var fruits = ["Apple", "Banana", "Cherry", "Durian", "Elder Berry"]
    
    @State var fruitName: String = "" //바인딩 String 필드
    //State 필드는 값이 변하면 화면을 다시 그림.
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("insert fruit name", text: $fruitName)
                        .padding()
                    
                    Button {
                        favoriteFruits.append(Fruit(name: fruitName, matchFruitName: "Apple", price: 1000))
                    } label: {
                        Text("Insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                }
            }
            List {
                ForEach(favoriteFruits, id: \.self) { fruit in
                    HStack {
                        Text(fruit.name)
                        Text(fruit.matchFruitName)
                        Text("\(fruit.price)")
                    }
                }.onDelete { indexSet in //Delete 버튼이 눌렸을 때 이벤트
                    favoriteFruits.remove(atOffsets: indexSet)
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
