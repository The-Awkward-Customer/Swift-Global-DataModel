//
//  ModelData.swift
//  DataHandling
//
//  Created by Peter Abbott on 05/09/2024.
//

import Foundation
import Combine

// Create a class that conforms to ObservableObject to manage your data
class ModelData: ObservableObject {
    // @Published allows SwiftUI views to reactively update when the data changes
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    @Published var hikes: [Hike] = load("hikeData.json")
    
    // You can add more data properties here as needed
}

// The same load function from before to load JSON data
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
