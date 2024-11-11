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
            List{
                ForEach(0 ..< 6) { item in
                    NavigationLink {
                        DetailsPage()
                    } label: {
                        ProductItem()
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
