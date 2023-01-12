//
//  Product.swift
//  StoreApp
//
//  Created by ioannis on 9/1/23.
//

import Foundation

struct Product:Codable,Hashable {
    
    var id:Int?
    let title:String
    let price:Double
    let description:String
    let images:[URL]?
    let category:Category
    
}

extension Product {
    
    static var preview:Product {
        Product(title: "Home made fresh Table", price: 687, description: "Andy shoes are designed to keeing in...", images: [URL(string:"https://unsplash.com/photos/xXJ6utyoSw0")!], category: Category.preview)
    }
}
