//
//  StoreModel.swift
//  StoreApp
//
//  Created by ioannis on 9/1/23.
//

import Foundation
@MainActor
class StoreModel:ObservableObject  {
    
    let client = StoreHTTPClient()
    
    @Published var categories: [Category]=[]
    @Published var products:[Product]=[]
    
    func fetchCategories() async throws {
        //generic
       categories =  try await client.load(Resource(url: URL.allCategories))
        
       //  categories = try await client.getCategories(url: URL.allCategories)
        
    }
    
    func fetchProductsByCategory(_ categoryId:Int) async throws {
                //generic

            products =  try await client.load(Resource(url: URL.productsByCategory(categoryId)))
        
       //products = try await client.getProductsByCategory(url: URL.productsByCategory(categoryId))
    }
    
    func saveProduct(_ createProductRequest:CreateProductRequest) async throws {
            
        let data  = try JSONEncoder().encode(createProductRequest)
        let product: Product = try await client.load(Resource(url: URL.saveProduct,method: .post(data)))
        products.append(product)
    }
    
}
