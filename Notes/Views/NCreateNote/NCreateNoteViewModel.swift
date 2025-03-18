//
//  NCreateNoteViewModel.swift
//  Notes
//
//  Created by Alexis Quiñonez on 18/03/2025.
//

import Foundation
class NCreateNoteViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var text: String = ""
    @Published  var size: TypeCard = .small
    @Published  var isFavorite: Bool = false
    
    func createNote() -> NCard {
        let card = NCard(title: title, text: text, type: size, isFavorite: isFavorite)
        return card
    }
}
