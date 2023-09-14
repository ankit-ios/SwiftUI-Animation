//
//  GroceryCategory.swift
//  SwiftUIAnimation
//
//  Created by Ankit Sharma on 14/09/23.
//

import Foundation

struct GroceryCategoryItem {
    let name: String
    let price: Double
}

struct GroceryCategory {
    let category: String
    let items: [GroceryCategoryItem]
}

extension GroceryCategory {
    
    static func all() -> [GroceryCategory] {
        [
            .init(category: "Fruits", items: [.init(name: "Mango", price: 10.0), .init(name: "Banana", price: 20.0), .init(name: "Grapes", price: 30.0), .init(name: "Berries", price: 40.0)]),
            .init(category: "Vegetables", items: [.init(name: "Onions", price: 60.0), .init(name: "Tomato", price: 70.0), .init(name: "Chilies", price: 80.0), .init(name: "Ginger", price: 90.0)]),
            .init(category: "Dairy Products", items: [.init(name: "Milk", price: 10.0), .init(name: "Eggs", price: 10.0), .init(name: "Cheese", price: 10.0), .init(name: "Butter", price: 700.0), .init(name: "Yogurt", price: 100.0), .init(name: "Ghee", price: 100.0)])
        ]
    }
}
