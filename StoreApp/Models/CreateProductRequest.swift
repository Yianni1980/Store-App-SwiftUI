//
//  CreateProductRequest.swift
//  StoreApp
//
//  Created by ioannis on 11/1/23.
//

import Foundation
struct CreateProductRequest: Encodable {
    
    let title: String
    let price: Double
    let description: String
    let categoryId: Int
    let images: [URL]
    
}

