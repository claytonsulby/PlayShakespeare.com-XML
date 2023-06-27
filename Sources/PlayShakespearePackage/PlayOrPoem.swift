//
//  File.swift
//  
//
//  Created by Clayton Sulby on 6/26/23.
//

import Foundation
import XMLCoder

enum PlayOrPoem {
    case play(Play)
    case poem(Poem)
}

extension PlayOrPoem: Codable {
    enum CodingKeys: String, XMLChoiceCodingKey {
        case play
        case poem
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case let .play(value):
            try container.encode(value, forKey: .play)
        case let .poem(value):
            try container.encode(value, forKey: .poem)
        }
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        do {
            self = .play(try container.decode(Play.self, forKey: .play))
        } catch {
            self = .poem(try container.decode(Poem.self, forKey: .poem))
        }
    }
}
