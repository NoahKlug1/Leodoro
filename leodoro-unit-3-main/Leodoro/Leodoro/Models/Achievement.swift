//
//  Achievement.swift
//  Leodoro
//
//  Created by Sarah Steininger on 01.09.25.
//

import Foundation

struct Achievement: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var points: String
    var imageName: String
}
