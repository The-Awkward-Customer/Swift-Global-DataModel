//
//  Hike.swift
//  DataHandling
//
//  Created by Peter Abbott on 05/09/2024.
//

import Foundation


struct Hike: Identifiable, Codable {
    var name: String
    var id: Int
    var distance: Float
    var difficulty: Int
}
