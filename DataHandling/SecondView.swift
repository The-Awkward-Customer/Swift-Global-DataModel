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
    
    @State private var isVisible = false
    
    var body: some View {
        VStack {
            Text("Second View")
                .foregroundColor(.gray)
            
            if modelData.landmarks.count > 2{
                Text(modelData.landmarks[2].name)
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

struct SecondView_Preview: PreviewProvider {
    static var previews: some View {
        SecondView()
            .environmentObject(ModelData()) // Inject the model data for previews
    }
}

