//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 11/11/24.
//

import SwiftUI

struct MenuPage: View {
    
    @EnvironmentObject var menuManager: MenuManager
    
    @State var search: String = ""
    
    var body: some View {
        NavigationView {
            List {
                AppTitle().padding(.top, 4)
                if menuManager.menu.count == 0 {
                    HStack {
                        Text(
                            "We couldn't fetch the data"
                        )
                        Button(
                            "Reload"
                        ) {
                        }
                                            }
                } else {
                    ForEach(menuManager.menu) { category in
                        if category.filteredItems(text: search).count > 0 {
                            Text(category.name)
                            .listRowBackground(Color("CardBackground"))
                            .foregroundColor(Color("Secondary"))
                            .padding()
                        }
                        
                        ForEach(category.filteredItems(text: search)) { item in
                            ZStack {
                                NavigationLink(destination: DetailsPage(product: item)) {
                                    EmptyView()
                                }.opacity(0)
                                ProductItem(product: item)
                                    .padding(.top)
                                    .padding(.leading)
                                    .padding(.bottom, 12)

                            }
                            
                        }
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color("CardBackground"))
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Products")
            .background(Color("SurfaceBackground"))
            .refreshable {
                menuManager.refreshItemsFromNetwork()
            }
            .searchable(text: $search)
        }
    }
}
    

#Preview {
    MenuPage()
        .environmentObject(MenuManager())
        .environmentObject(LikesManager())
}
