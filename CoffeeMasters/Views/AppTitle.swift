//
//  AppTitle.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 18/11/24.
//

import SwiftUI

struct AppTitle: View {
    var body: some View {
        HStack {
            Spacer()
            Image("logo")
            Spacer()
        }
            .padding(4)
            .listRowBackground(Color("Secondary"))
            .background(Color("Secondary"))
    }
}

#Preview {
    AppTitle()
}
