//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 11/11/24.
//

import Foundation


class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
}
