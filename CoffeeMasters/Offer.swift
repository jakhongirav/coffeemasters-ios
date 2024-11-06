//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 06/11/24.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        VStack {
            Text(title)
            Text(description)
        }
    }
}

#Preview {
    Offer()
}
