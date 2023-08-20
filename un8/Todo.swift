//
//  Todo.swift
//  un8
//
//  Created by Xichen Dong on 20/08/2023.
//

import Foundation

struct Todo: Identifiable, Codable {
    var id = UUID()
    var title: String
    var isComplete = false
    var subtitle = ""
}
