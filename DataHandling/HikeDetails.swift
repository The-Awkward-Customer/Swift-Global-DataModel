//
//  HikeDetails.swift
//  DataHandling
//
//  Created by Peter Abbott on 05/09/2024.
//

import SwiftUI

struct HikeDetails: View {
    
    // Access the shared ModelData using @EnvironmentObject
    @EnvironmentObject var modelData: ModelData
    
    
    
    var body: some View {
        VStack {
            Text(modelData.hikes[3].name)
                .font(.title)
            Text("Difficulty: \(modelData.hikes[3].difficulty)")
                .fontWeight(.bold)
                .foregroundColor(.gray)
            
        }
    }
}


struct HikeDetails_Preview: PreviewProvider {
    static var previews: some View {
        HikeDetails()
            .environmentObject(ModelData()) // Inject the model data for previews
    }
}
