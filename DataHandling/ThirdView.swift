//
//  ThirdView.swift
//  DataHandling
//
//  Created by Peter Abbott on 05/09/2024.
//

import SwiftUI
struct ThirdView: View {
    
    // Access the shared ModelData using @EnvironmentObject
        @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack {
                    Text("Second View")
                    
            if modelData.landmarks.count > 3{
                Text(modelData.landmarks[3].name)
                    .font(.title)
                    } else {
                        Text("No landmarks available")
                    }
                }
            }
}

struct Third_Preview: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(ModelData()) // Inject the model data for previews
    }
}
