//
//  TextFieldPractice.swift
//  Notes
//
//  Created by Alexis Quiñonez on 13/03/2025.
//

import SwiftUI

struct TextFieldPractice: View {
    
    @State var name: String = ""
    @State var color: Color = Color.gray.opacity(0.2)
    
    var body: some View {
        TextField("Name", text: $name)
            .font(.headline)
            .padding()
            .background(color)
            .cornerRadius(8)
            .padding()
            .onChange(of: name) { newValue in
                //Add validation
                if newValue.count > 10 {
                    //change color red field
                    color = .red
                }else {
                    color = Color.gray.opacity(0.2)
                }
            }
        
        //TextEditor
    }
}

#Preview {
    TextFieldPractice()
}
