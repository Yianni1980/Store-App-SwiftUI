//
//  StoreAppApp.swift
//  StoreApp
//
//  Created by ioannis on 5/1/23.
//

import SwiftUI

@main
struct StoreAppApp: App {
    @StateObject private var storeModel = StoreModel()
    var body: some Scene {
        WindowGroup {
            CategoryListScreen().environmentObject(storeModel)
        }
    }
}
