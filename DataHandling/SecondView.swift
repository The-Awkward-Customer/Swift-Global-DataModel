//
//  SecondView.swift
//  DataHandling
//
//  Created by Peter Abbott on 05/09/2024.
//

import SwiftUI

struct SecondView: View {
    
    // Access the shared ModelData using @EnvironmentObject
        @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack {
                    Text("Second View")
                    
            if modelData.landmarks.count > 2{
                Text(modelData.landmarks[2].name)
                    .font(.title)
                    } else {
                        Text("No landmarks available")
                    }
                }
            }
}

struct SecondView_Preview: PreviewProvider {
    static var previews: some View {
        SecondView()
            .environmentObject(ModelData()) // Inject the model data for previews
    }
}

