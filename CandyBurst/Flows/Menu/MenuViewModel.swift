//
//  MenuViewModel.swift
//  CandyBurst
//
//  Created by Dmitriy Holovnia on 20.11.2023.
//

import Foundation

final class MenuViewModel: ObservableObject {
    @Published var snacks = Array<MenuItem>()
    @Published var salads = Array<MenuItem>()
    
    func getData() {
        snacks = MenuItem.snacksMockData
        salads = MenuItem.saladsMockData
    }
}
