//
//  MenuItem.swift
//  CandyBurst
//
//  Created by Dmitriy Holovnia on 20.11.2023.
//

import Foundation
import SwiftUI

struct MenuItem: Identifiable {
    let id: String
    let name: String
    let price: Int
}

extension MenuItem {
    static let saladsMockData: [MenuItem] = [
        MenuItem(id: "0", name: "Salad 1", price: 100),
        MenuItem(id: "1", name: "Salad 2", price: 100),
        MenuItem(id: "2", name: "Salad 3", price: 100),
        MenuItem(id: "3", name: "Salad 4", price: 100)
    ]
    
    static let snacksMockData: [MenuItem] = [
        MenuItem(id: "4", name: "Snack 1", price: 90),
        MenuItem(id: "5", name: "Snack 2", price: 90),
        MenuItem(id: "6", name: "Snack 3", price: 90),
        MenuItem(id: "7", name: "Snack 4", price: 90)
    ]
}
