//
//  People.swift
//  PeopleSwiftUI
//
//  Created by Alex on 17/07/2023.
//

import Foundation

struct People: Identifiable {
    var id = UUID()
    var imageName: String
    var name: String
    
    static let `default` = [
    People(imageName: "people1", name: "Trunks"),
    People(imageName: "people2", name: "Gohan"),
    People(imageName: "people3", name: "Goku")
    ]
}
