//
//  AppInfo.swift
//  Notes
//
//  Created by Alexis Quiñonez on 18/03/2025.
//

import Foundation

class AppInfo: ObservableObject {
    @Published var cards: [NCard] = [
        NCard(title: "Compras supermercado", text: "Drkin, eggs, pilas", type: .small,isFavorite: true),
        NCard(title: "Compras auto", text: "One, two , three", type: .small,isFavorite: false),
        NCard(title: "Compras other", text: "banana , Tomate , schsad", type: .medium,isFavorite: false)
    ]
    
    
    
    func createNote(card:NCard){
        cards.append(card)
    }
}
