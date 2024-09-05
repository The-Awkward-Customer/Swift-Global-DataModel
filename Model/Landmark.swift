//
//  Landmark.swift
//  DataHandling
//
//  Created by Peter Abbott on 05/09/2024.
//

import Foundation


struct Landmark: Identifiable, Codable {
    var name: String
    var category: String
    var city: String
    var state: String
    var id: Int
    var isFeatured: Bool
    var isFavorite: Bool
    var park: String
}
