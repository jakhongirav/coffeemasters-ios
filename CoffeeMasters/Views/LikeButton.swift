//
//  LikeButton.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 18/11/24.
//

import SwiftUI

struct LikeButton: View {
    @EnvironmentObject var likesManager: LikesManager
    
    var product: Product
    
    var body: some View {
        Image(systemName: likesManager.isLiked(id: product.id) ? "heart.fill" : "heart")
            .padding()
            .foregroundColor(Color("Secondary"))
            .accessibilityLabel(likesManager.isLiked(id: product.id) ? "Dislike" : "Like")
            .onTapGesture {
                likesManager.toggle(product.id)
            }
    }
}

#Preview {
    LikeButton(product: Product(id: 1, name: "Dummy product", description: "description", price: 1.25, image: "DummyImage"))
        .environmentObject(LikesManager())
}
