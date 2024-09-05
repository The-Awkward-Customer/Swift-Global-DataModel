//
//  FirstView.swift
//  DataHandling
//
//  Created by Peter Abbott on 05/09/2024.
//

import SwiftUI

struct FirstView: View {
    
    // Access the shared ModelData using @EnvironmentObject
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack {
            Text("First View")
            
            if modelData.landmarks.count > 1{
                Text(modelData.landmarks[1].name)
                    .font(.title)
            } else {
                Text("No landmarks available")
            }
        }
    }
}



struct FirstView_Preview: PreviewProvider {
    static var previews: some View {
        FirstView()
            .environmentObject(ModelData()) // Inject the model data for previews
    }
}
