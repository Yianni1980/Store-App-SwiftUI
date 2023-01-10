//
//  Locale+Extensions.swift
//  StoreApp
//
//  Created by ioannis on 10/1/23.
//

import Foundation


extension Locale {
    
    static var currencyCode:String {
        Locale.current.currency?.identifier ?? "EUR"
    }
}
