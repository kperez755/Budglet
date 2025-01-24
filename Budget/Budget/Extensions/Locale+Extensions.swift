//
//  Locale+Extensions.swift
//  Budget
//
//  Created by Kevin Perez on 1/21/25.
//

import Foundation

extension Locale {
    static var currencyCode: String {
        Locale.current.currency?.identifier ?? "USD"
    }
}

