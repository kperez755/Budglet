//
//  Strings+Extensions.swift
//  Budget
//
//  Created by Kevin Perez on 1/20/25.
//

import Foundation

extension String {
    
    var isEmptyOrWhitespace: Bool {
        trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
