//
//  NCard.swift
//  Notes
//
//  Created by Alexis Quiñonez on 12/03/2025.
//

import Foundation

struct NCard: Identifiable {
    var id = UUID()
    
    let title:String
    let text: String
    let type :TypeCard
    
}

enum TypeCard {
    case small
    case medium
}
