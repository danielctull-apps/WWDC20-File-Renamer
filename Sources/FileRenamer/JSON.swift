//
//  File 2.swift
//  
//
//  Created by Daniel Tull on 27.06.2020.
//

import Foundation

struct JSON: Codable {
    let contents: [Content]
}

struct Content: Codable {
    let id: String
    let title: String
}
