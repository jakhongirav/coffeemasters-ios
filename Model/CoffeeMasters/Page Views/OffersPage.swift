//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 08/11/24.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        VStack {
            Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
            Offer(title: "Welcome Gift", description: "25% off on your first order.")
        }
    }
}
#Preview {
    OffersPage()
}
