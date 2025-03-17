//
//  ButtonPractice.swift
//  Notes
//
//  Created by Alexis Quiñonez on 13/03/2025.
//

import SwiftUI

struct ButtonPractice: View {
    @State var counter:Int = 0
    
    var body: some View {
        VStack{
            Text("\(counter)")
            //what here call closure
            //computed properies vs closures
            Button {
                counter += 1
                print(counter)
            } label : {
                Text("Press me")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
        }
        
        
    }
}

#Preview {
    ButtonPractice()
}
