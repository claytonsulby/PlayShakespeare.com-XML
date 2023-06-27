//
//  File.swift
//  
//
//  Created by Clayton Sulby on 6/26/23.
//

import Foundation

extension String {
    
    func replacingNonAsciiAmpersands() -> String {
        return self.replacingOccurrences(of: "(?!&#[0-9]+;)&", with: "&#38;", options: .regularExpression)
    }
    
}
