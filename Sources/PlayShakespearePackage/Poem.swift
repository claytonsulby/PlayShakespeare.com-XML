//
//  File.swift
//  
//
//  Created by Clayton Sulby on 6/26/23.
//

import Foundation
import XMLCoder

struct Poem: Codable, DynamicNodeEncoding {
    let title: Title
    let playwrights: Playwrights
    let editions: Editions
    let poemintro: Poemintro?
    let poembody: Poembody?
    let sonnets: Sonnets?
    let sources: Sources
    let sourcedetails: Sourcedetails
    let variant, unique: String
    let numberOfLines, trans: String?

    enum CodingKeys: String, CodingKey {
        case title, playwrights, editions, poemintro, poembody, sonnets, sources, sourcedetails
        case variant = "variant"
        case unique = "unique"
        case numberOfLines = "numberOfLines"
        case trans = "trans"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Play.CodingKeys.variant: return .attribute
        case Play.CodingKeys.unique: return .attribute
        case Play.CodingKeys.numberOfLines: return .attribute
        case Play.CodingKeys.trans: return .attribute
            default: return .element
        }
    }
}

// MARK: - Poembody
struct Poembody: Codable {
    let stanza: [Stanza]
    let subtitle: String?
}

// MARK: - Stanza
struct Stanza: Codable, DynamicNodeEncoding {
    let line: [Line]
    let couplet: Couplet?
    let num: String?

    enum CodingKeys: String, CodingKey {
        case line, couplet
        case num = "num"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Stanza.CodingKeys.num: return .attribute
            default: return .element
        }
    }
}

// MARK: - Couplet
struct Couplet: Codable {
    let line: [Line]
}

// MARK: - Poemintro
struct Poemintro: Codable {
    let intro: Intro?
    let dedication: Dedication
}

// MARK: - Dedication
struct Dedication: Codable {
    let line: [Line]
    let dedauthor: String
}

// MARK: - Intro
struct Intro: Codable {
    let line: [Line]
}

// MARK: - Sonnets
struct Sonnets: Codable {
    let sonnet: [Sonnet]
}

// MARK: - Sonnet
struct Sonnet: Codable {
    let sonnetnum: Sonnetnum
    let quatrain: [Quatrain]
    let couplet: Couplet
}

// MARK: - Quatrain
struct Quatrain: Codable, DynamicNodeEncoding {
    let line: [Line]
    let quanum: String

    enum CodingKeys: String, CodingKey {
        case line
        case quanum = "quanum"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Quatrain.CodingKeys.quanum: return .attribute
            default: return .element
        }
    }
}

// MARK: - Sonnetnum
struct Sonnetnum: Codable, DynamicNodeEncoding {
    let chron, text: String

    enum CodingKeys: String, CodingKey {
        case chron = "chron"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Sonnetnum.CodingKeys.chron: return .attribute
            default: return .element
        }
    }
}
