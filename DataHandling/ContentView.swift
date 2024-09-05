//
//  ContentView.swift
//  DataHandling
//
//  Created by Peter Abbott on 05/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    // Access the shared ModelData using @EnvironmentObject
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        TabView {
            FirstView()
                .tabItem {
                    Label(modelData.landmarks[1].name, systemImage: "1.circle")
                }
            
            SecondView()
                .tabItem {
                    Label(modelData.landmarks[2].name, systemImage: "2.circle")
                }
            
            ThirdView()
                .tabItem {
                    Label(modelData.landmarks[3].name, systemImage: "3.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData()) // Inject the model data for previews
    }
}
