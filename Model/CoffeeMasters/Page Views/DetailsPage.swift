//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 11/11/24.
//

import SwiftUI

struct DetailsPage: View {
    
    @State var quantity = 1
    
    var body: some View {
        ScrollView {
            Image("DummyImage")
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text("Product")
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            HStack {
                Text("$ 4.25 ea")
                Stepper(value: $quantity, in: 1...10) { }
            }
                .frame(maxWidth: .infinity)
                .padding(30)
                            
            Text("Subtotal $\(Double(quantity) * 4.25, specifier: "%.2f")")
                .bold()
                .padding(12)
            
            Button("Add \(quantity)") {
                //TODO
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("Alternative2"))
                .foregroundColor(Color.black)
                .cornerRadius(25)

        }
        // Uncomment and ensure `product` is defined
        // .navigationTitle(product.name)
    }
}

#Preview {
    DetailsPage()
}
