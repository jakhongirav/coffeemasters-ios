//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 11/11/24.
//

import Foundation


class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
    
    func add(product: Product, quantity: Int) {
        self.cart.append((product, quantity))
    }
    
    func remove (product: Product) {
        self.cart.removeAll { itemInCard in
            return itemInCard.0.id==product.id
        }
    }
}
