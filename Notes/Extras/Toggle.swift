//
//  Toggle.swift
//  Notes
//
//  Created by Alexis Quiñonez on 13/03/2025.
//

import SwiftUI

struct TogglePractice: View {
    
    @State var age : Double = 18
    @State var isAdult: Bool = false
    
    var body: some View {
        VStack {
            Text("Age: \(age.formatted(.number))")
            Slider(value: $age, in: 1...100,step: 1)
            
            Toggle("Is an adult?", isOn: $isAdult)//concept : Binding
        
        }
        .padding()
        .onChange(of: age) { newValue in
            if newValue > 18 {
                isAdult = true
            }else {
                isAdult = false
            }
        }
    }
}


#Preview {
    TogglePractice()
}
