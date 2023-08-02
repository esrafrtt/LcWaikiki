//
//  URL+Extensions.swift
//  LcWaikiki
//
//  Created by Esra Fırat on 31.07.2023.
//

import Foundation

extension URL {
    
    static var development: URL {
        URL(string: "https://api.escuelajs.co")!
    }
    static var production: URL {
        URL(string: "https://api.escuelajs.co")!
    }
    static var defaultURL: URL {
        #if DEBUG
        return development
        #else
        return production
        #endif
    }
    static var allCategories: URL {
        URL(string: "/api/v1/categories", relativeTo: Self.defaultURL)!
    }
    static func productsByCategory(_ categoryId: Int) -> URL {
        return URL(string: "/api/v1/categories/\(categoryId)/products",relativeTo: Self.defaultURL)!
    }
}




