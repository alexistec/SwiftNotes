//
//  NCardView.swift
//  Notes
//
//  Created by Alexis Quiñonez on 12/03/2025.
//

import SwiftUI

struct NCardView: View {
    
    let card: NCard
    
    @ViewBuilder
    func CardSmallView() -> some View {
        HStack{
            Text(card.title)
                .font(.headline)
                .lineLimit(2)
                .frame(width: 120)
                .padding(8)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            Text(card.text)
                .font(.subheadline)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth:.infinity)
            Image(systemName: "heart")
                .foregroundStyle(Color.red)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
        .listRowSeparator(.hidden)
    }
    
    @ViewBuilder
    func CardMediumView() -> some View {
        VStack{
            HStack(alignment: .top){
                Spacer()
                Image(systemName: "heart")
                    .foregroundStyle(Color.red)
            }
            
            Text(card.title)
                .font(.title2)
                .lineLimit(2)
                .padding(.vertical,8)
                .padding(.horizontal,30)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            
            Text(card.text)
                .font(.body)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
        }
        .frame(height: 150)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
        .listRowSeparator(.hidden)
    }
    
    var body: some View {
        switch card.type {
            case .small:
                CardSmallView()
        case .medium:
            CardMediumView()
        }
    }
}

#Preview {
    NCardView(card: NCard(title: "Hello", text: "Hello wordl", type: .medium))
}
