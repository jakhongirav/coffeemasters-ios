//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 11/11/24.
//

import SwiftUI

struct MenuPage: View {
    
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                    ForEach(category.products) { product in
                        NavigationLink(destination: DetailsPage()) {
                            ProductItem(product: product)
                                .padding(.top)
                                .padding(.leading)
                                .padding(.bottom, 12)
                        }
                    }
                }
            }
            .navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage().environmentObject(MenuManager())
}
