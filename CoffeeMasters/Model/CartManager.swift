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
            // Check if the product is already in the cart
            if let index = cart.firstIndex(where: { $0.0.id == product.id }) {
                // Update the quantity of the existing item
                cart[index].1 += quantity
            } else {
                // Add new product to the cart
                cart.append((product, quantity))
            }
        }
    
    func remove (product: Product) {
        self.cart.removeAll { itemInCard in
            return itemInCard.0.id==product.id
        }
    }

    func total() -> Double {
            var total = 0.0
            for item in cart {
                total += item.0.price * Double(item.1)
        }
            return total
        }
    func clear() {
        cart
            .removeAll()
        }
        
    // Checks if the cart is empty.
    func isCartEmpty() -> Bool {
        return cart.isEmpty
    }
}
