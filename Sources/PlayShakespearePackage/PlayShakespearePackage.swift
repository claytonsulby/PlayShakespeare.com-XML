//
//  File.swift
//  
//
//  Created by Clayton Sulby on 6/25/23.
//
import Foundation
import XMLCoder

public struct PlayShakespearePackage {

    private let decoder:XMLDecoder = XMLDecoder()
    
    func play(path: PSPath) -> PSPlay? {
        guard let url:URL = Bundle.module.url(forResource: path.rawValue, withExtension: "xml"),
              let xml:PSPlay = try? decoder.decode(PSPlay.self, from: Data(contentsOf: url)) else {
            print(path.rawValue)
            return nil
        }
        return xml
    }
    
    public init() {
    }
}
