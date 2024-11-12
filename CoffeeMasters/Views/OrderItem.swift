//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 12/11/24.
//

import SwiftUI

struct OrderItem: View {
    
    var item: (Product, Int)
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        HStack {
            Text("\(item.1)x").padding()
            Text(item.0.name)
            Spacer()
            Text("$\(Double(item.1) * item.0.price, specifier: "%.2f")")
            Image(systemName: "trash").font(.title).foregroundColor(Color(.secondary)).padding()
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
        }
    }
}

#Preview {
    OrderItem(item: (Product(id: 1, name: "Ordered Item", description: "Description of ordered item", price: 2.12, image: "DummyImage"), 2)).padding()
}
