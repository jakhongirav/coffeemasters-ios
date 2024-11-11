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
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity, maxHeight: 200)
                .clipped()
            VStack(spacing: 10) {
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
                    .cornerRadius(8)
                    .multilineTextAlignment(.center)
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
                    .cornerRadius(8)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Offer(title: "My offer", description: "This is a description")
                .previewLayout(.fixed(width: 350, height: 500))
                .preferredColorScheme(.light)
        }
    }
}
