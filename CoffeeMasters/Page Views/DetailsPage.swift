//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 11/11/24.
//

import SwiftUI

struct DetailsPage: View {
    
    @State var quantity = 1
    
    var product: Product
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.dismiss) var dismiss

    
    
    var body: some View {
        ScrollView {
            AsyncImage(url: product.imageURL)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text(product.name)
                .bold()
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            Text(product.description)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
                .foregroundColor(Color("Primary"))

            HStack {
                Text("$ \(product.price, specifier: "%.2f") ea")
                Stepper(value: $quantity, in: 1...10) { }
            }
                .frame(maxWidth: .infinity)
                .padding(30)
                            
            Text("Subtotal $\(Double(quantity)*product.price, specifier: "%.2f")")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                cartManager.add(product: product, quantity: quantity)
                dismiss()
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("Alternative2"))
                .foregroundColor(Color.black)
                .cornerRadius(25)

        }
         .navigationTitle(product.name)
         .toolbar {
                         LikeButton(product: product)
                     }
    }
}

#Preview {
    DetailsPage(product: Product(id: 1, name: "Dummy product", description: "description", price: 1.25, image: "DummyImage"))
        .environmentObject(CartManager())
        .environmentObject(LikesManager())
}

struct ProductThumbnail: View {
    var url: URL
    
    var body: some View {
        AsyncImage(url: url)
            .cornerRadius(5)
            .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)

    }
}
