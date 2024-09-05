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
    
    // State variables to track the changes
    @State private var isVisible = false
    
    var body: some View {
        VStack {
            Text("First View")
                .foregroundColor(.gray)
            
            if modelData.landmarks.count > 1{
                Text(modelData.landmarks[1].name)
                    .font(.title)
                    .opacity(isVisible ? 1 : 0) // Animate opacity
                    .offset(y: isVisible ? 0 : 20) // Animate position (y-axis)
                    .animation(.easeInOut(duration: 0.75), value: isVisible) // Apply animation
            } else {
                Text("No landmarks available")
            }
            
        }
        .onAppear {
            // Trigger animation when the view appears
            withAnimation {
                isVisible = true
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
