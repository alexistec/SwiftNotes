//
//  NCreateNoteView.swift
//  Notes
//
//  Created by Alexis Quiñonez on 17/03/2025.
//

import SwiftUI

struct NCreateNoteView: View {
    @State private var title:String = ""
    @State private var text:String = ""
    @State var size: TypeCard = .small
    @State var isFavorite:Bool = false
    
    
    func onTap(){
        //create note
        let card = NCard(title: title, text: text, type: size)
        
        print(card)
    }
    
    var body: some View {
        ScrollView{
            VStack {
                Text("Crear Nueva Nota")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom,10)
                TextField("Titulo",text: $title)
                    .font(.headline)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                TextEditor(text: $text)
                    .scrollContentBackground(.hidden)
                    .font(.body)
                    .frame(height: 150)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                HStack{
                    Text("Tamaño")
                    Spacer()
                    Picker("Tamaños", selection: $size) {
                        Text("Pequeño").tag(TypeCard.small)
                        Text("Mediano").tag(TypeCard.medium)
                    }
                }
                
                Toggle("Marcar como favorito", isOn: $isFavorite)
                Button {
                    onTap()
                } label: {
                    Text("Guardar nota")
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding(.top,20)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .padding()
        .background(Color.cyan.opacity(0.2))
    }
}

#Preview {
    NCreateNoteView()
}
