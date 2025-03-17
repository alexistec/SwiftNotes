//
//  Pickers.swift
//  Notes
//
//  Created by Alexis Quiñonez on 13/03/2025.
//

import SwiftUI

struct Pickers: View {
    @State var date: Date = Date()
    @State var category: Int = 0
    var body: some View {
        /*DatePicker("DATE", selection:$date )
            .padding()*/
        
        Picker("Categories",selection: $category)
        {
            Text("0").tag(0)
            Text("1").tag(1)
            Text("2").tag(2)
        }
        .pickerStyle(.segmented)
    }
}

#Preview {
    Pickers()
}
