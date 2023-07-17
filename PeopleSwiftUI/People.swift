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
    var age: Int
    
    static let `default` = [
    People(imageName: "people1", name: "Trunks", age: 18),
    People(imageName: "people2", name: "Gohan", age: 13),
    People(imageName: "people3", name: "Goku", age: 28),
    ]
}
