//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 11/11/24.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< 6) { item in
                    NavigationLink(destination: DetailsPage()) {
                        ProductItem(product: Product(id: 2, name: "Dummy product", description: "my dummy product", price: 4.25, image: ""))
                            .padding(.top)
                            .padding(.leading)
                            .padding(.bottom, 12)
                    }
                }
            }
            .navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage()
}
