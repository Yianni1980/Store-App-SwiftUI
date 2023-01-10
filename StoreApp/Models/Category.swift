//
//  Category.swift
//  StoreApp
//
//  Created by ioannis on 9/1/23.
//

import Foundation


struct Category:Codable,Hashable {
    
    let id:Int
    let name:String
    let image:URL
    
}
extension Category {
    
    static var preview:Category {
        Category(id: 1, name: "Clothes", image: URL(string:"https://unsplash.com/photos/xXJ6utyoSw0")!)
    }
}
