//
//  CategoryModel.swift
//  Touchdown
//
//  Created by gizem demirtas on 10.09.2024.
//

import Foundation

struct Category : Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
