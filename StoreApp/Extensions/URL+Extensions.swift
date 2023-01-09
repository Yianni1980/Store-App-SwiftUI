//
//  URL+Extensions.swift
//  StoreApp
//
//  Created by ioannis on 5/1/23.
//

import Foundation
extension URL {
    
    static var development:URL {
        URL(string: "https://api.escuelajs.co")!
    }
    static var production:URL {
        URL(string: "https://api.escuelajs.co")!
    }
    
    
    static var `default`: URL {
            #if DEBUG
                return development
            #else
                return production
            #endif
        }
    
    static var saveProduct: URL {
           return URL(string: "/api/v1/products/", relativeTo: Self.default)!
       }
       
       static var allCategories: URL {
           URL(string: "/api/v1/categories", relativeTo: Self.default)!
       }
       
       static func productsByCategory(_ categoryId: Int) -> URL {
           return URL(string: "/api/v1/categories/\(categoryId)/products", relativeTo: Self.default)!
        //&limit=20 at the end of the string url if you want to limit the products to 20 for example
       }
  
}
