//
//  Locale+Extensions.swift
//  LcWaikiki
//
//  Created by Esra Fırat on 2.08.2023.
//

import Foundation
extension Locale {
    
    static var currencyCode: String {
        Locale.current.currency?.identifier ?? "TL"
    }
    
}
