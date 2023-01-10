//
//  ProductListScreen.swift
//  StoreApp
//
//  Created by ioannis on 10/1/23.
//

import SwiftUI

struct ProductListScreen: View {
    let category:Category
    
    @EnvironmentObject private var storeModel:StoreModel

    var body: some View {
        List(storeModel.products,id:\.id) { product in
            ProductCellView(product: product)
            
        }
        .listStyle(.plain)
        .task {
            do {
                try await  storeModel.fetchProductsByCategory(category.id)

            } catch {
                print(error)
            }
        }.navigationTitle(category.name)
    }
}

struct ProductListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductListScreen(category: Category(id: 1, name: "Clothes", image: URL(string: "https://unsplash.com/photos/xXJ6utyoSw0")!))
            .environmentObject(StoreModel())
    }
}
