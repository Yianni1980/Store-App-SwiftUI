//
//  View+Extensions.swift
//  StoreApp
//
//  Created by ioannis on 12/1/23.
//

import Foundation
import SwiftUI

extension View {
    
    func borderedCaption(backgroundColor: Color = .green, foregroundColor: Color = .white) -> some View {
        modifier(BorderedCaption(backgroundColor: backgroundColor, foregroundColor: foregroundColor))
    }
    
}
