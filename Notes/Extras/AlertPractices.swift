//
//  AlertPractices.swift
//  Notes
//
//  Created by Alexis Quiñonez on 17/03/2025.
//

import SwiftUI

struct AlertPractices: View {
    @State var showAlert : Bool = false
    
    var body: some View {
        VStack {
            Button("Show Alert"){
                showAlert = true
            }
        }
        .alert("Este es un mensaje de alerta", isPresented: $showAlert){
            Button("Aceptar"){
                print("Aceptar")
            }
            Button("Cancelar"){
                print("cancelar")
            }
        }
    }
}

#Preview {
    AlertPractices()
}
