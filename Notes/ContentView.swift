//
//  ContentView.swift
//  Notes
//
//  Created by Alexis Quiñonez on 12/03/2025.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var appInfo = AppInfo()
    
    var body: some View {
        NListView().environmentObject(appInfo)
    }
}

#Preview {
    ContentView()
}
