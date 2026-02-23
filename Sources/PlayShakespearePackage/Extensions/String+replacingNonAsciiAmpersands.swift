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
    
    func removingXMLKeys(removing keys: String...) -> String {
        var str = self
        keys.forEach { key in
            str = str.replacingOccurrences(of: "<(\\/)?\(key)[^>]*>", with: "", options: .regularExpression)
        }
        return str
    }
    
    func replacingOccurrences(ofKey key: String, with: String) -> String {
        return self.replacingOccurrences(of: "<(\\/)?\(key)[^>]*>", with: with, options: .regularExpression)
    }
    
    func removingXMLKeys(within key: String) -> String {
        return self.replacingOccurrences(of: "<(?!(\\/)?\(key))[^>]*>", with: "", options: .regularExpression)
    }
    
    func allXMLKeys() -> [String]? {
        let x = Regex("(?<=<)(?!\\?)[^\\/][^\\ >]*")
        return self.matches(of: x)
//        return self.range(of: "(?<=<)(?!\\?)[^\\/][^\\ >]*", options: .regularExpression)
            
//
//            .compactMap { range in
//            String(self[range])
//        }.uniqueElementsSet
    }
    
//    func removingXMLKeys(within key: String, removing keys: String) -> String {
//        var str = self
//        keys.forEach { key in
//            str = str.replacingOccurrences(of: "<(?!(\\/)?\(key))[^>]*>", with: "", options: .regularExpression)
//        }
//        return str
//    }
    
    
}

extension RangeReplaceableCollection where Element: Hashable {
    var uniqueElementsSet: Array<Element> {
       Array(Set(Dictionary(grouping: self, by: { $0 }).compactMap{ $1.count == 1 ? $0 : nil }))
    }
}
