//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 06/11/24.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {

    @StateObject private var cartManager = CartManager()
    @StateObject private var menuManager = MenuManager()
    @StateObject private var likesManager = LikesManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
                .environmentObject(likesManager)
        }
    }
}
