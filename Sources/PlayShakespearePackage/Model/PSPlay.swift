// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let play = try? JSONDecoder().decode(Play.self, from: jsonData)


import Foundation
import XMLCoder

// MARK: - PlayClass
struct PSPlay: Codable, DynamicNodeEncoding {
    let title: Title
    let playwrights: Playwrights
    let edition: String?
    let editions: Editions?
    let performances: Performances?
    let personae: Personae?
    let act: [Act]
    let endpersonae: Endpersonae?
    let epilogue: Epilogue?
    let finis: Finis?
    let sources: Sources?
    let poemintro: Poemintro?
    let poembody: Poembody?
    let sonnets: Sonnets?
    let sourcedetails: Sourcedetails
    let variant, unique: String
    let numberOfLines, trans: String?

    enum CodingKeys: String, CodingKey {
        case title, playwrights, edition, editions, performances, personae, act, endpersonae, epilogue, finis, sources, sourcedetails
        case poemintro, poembody, sonnets
        case variant = "variant"
        case unique = "unique"
        case numberOfLines = "numberOfLines"
        case trans = "trans"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case PSPlay.CodingKeys.variant: return .attribute
        case PSPlay.CodingKeys.unique: return .attribute
        case PSPlay.CodingKeys.numberOfLines: return .attribute
        case PSPlay.CodingKeys.trans: return .attribute
            default: return .element
        }
    }
}

// MARK: - Endpersonae
struct Endpersonae: Codable {
    let pernamestitle: Pernamestitle?
    let persnames: [String]?
    let persona: [Endpersona]
    let personagroup: Personagroup?
    let lb: String?
}

struct Endpersona: Codable {
    let emph: [Emph]?
    let text: String

    enum CodingKeys: String, CodingKey {
        case emph
        case text = ""
    }
}

// MARK: - Pernamestitle
struct Pernamestitle: Codable {
    let lb: [String]?
    let text: String

    enum CodingKeys: String, CodingKey {
        case lb
        case text = ""
    }
}

// MARK: - Personagroup
struct Personagroup: Codable, DynamicNodeEncoding {
    let persona: [String]
    let title, items: String

    enum CodingKeys: String, CodingKey {
        case persona
        case title = "title"
        case items = "items"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Personagroup.CodingKeys.title: return .attribute
        case Personagroup.CodingKeys.items: return .attribute
            default: return .element
        }
    }
}

// MARK: - Epilogue
struct Epilogue: Codable {
    let scenetitle: Scenetitle?
    let scenepersonae: Scenepersonae?
    let scenelanguage: Scenelanguage?
    let speech: [Speech]
    let stagedir: [Stagedir]?
}

// MARK: - Finis
struct Finis: Codable {
    let finistitle: String
}

// MARK: - Act
struct Act: Codable, DynamicNodeEncoding {
    let acttitle: Acttitle?
    let scene: [Scene]
    let num: String?
    let finis: Finis?
    let epilogue: Epilogue?

    enum CodingKeys: String, CodingKey {
        case acttitle, scene
        case num = "num"
        case finis, epilogue
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Act.CodingKeys.num: return .attribute
            default: return .element
        }
    }
}

// MARK: - Acttitle
struct Acttitle: Codable, DynamicNodeEncoding {
    let id: String?
    let text: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Acttitle.CodingKeys.id: return .attribute
            default: return .element
        }
    }
}

// MARK: - Scene
struct Scene: Codable, DynamicNodeEncoding {
    let scenetitle: Scenetitle?
    let scenelocation: String?
    let scenetime: [String]?
    let scenepersonae: Scenepersonae?
    let scenelanguage: Scenelanguage?
    let stagedir: [Stagedir]
    let speech: [Speech]
    let song: [Song]?
    let actnum, num: String

    enum CodingKeys: String, CodingKey {
        case scenetitle, scenelocation, scenetime, scenepersonae, scenelanguage, stagedir, speech, song
        case actnum = "actnum"
        case num = "num"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Scene.CodingKeys.num: return .attribute
        case Scene.CodingKeys.actnum: return .attribute
            default: return .element
        }
    }
}

// MARK: - Song
struct Song: Codable {
    let stanza: [Stanza]?
    let line: [Line]
    let speaker: Speaker?
}

// MARK: - Scenetitle
struct Scenetitle: Codable, DynamicNodeEncoding {
    let text: String
    let type, id, rend: String?

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case id = "id"
        case text = ""
        case rend = "rend"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Scenetitle.CodingKeys.type: return .attribute
        case Scenetitle.CodingKeys.id: return .attribute
        case Scenetitle.CodingKeys.rend: return .attribute
            default: return .element
        }
    }
}

// MARK: - Scenelanguage
struct Scenelanguage: Codable {
    let language: [Language]
}

// MARK: - LanguageElement
struct Language: Codable, DynamicNodeEncoding {
    let short: String?
    let text: String

    enum CodingKeys: String, CodingKey {
        case short = "short"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Language.CodingKeys.short: return .attribute
            default: return .element
        }
    }
}

// MARK: - Scenepersonae
struct Scenepersonae: Codable {
    let scenepersona: [Scenepersona]
}

// MARK: - ScenepersonaClass
struct Scenepersona: Codable, DynamicNodeEncoding {
    let short: String?
    let text: String
    let alias: String?

    enum CodingKeys: String, CodingKey {
        case short = "short"
        case text = ""
        case alias = "alias"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Scenepersona.CodingKeys.short: return .attribute
        case Scenepersona.CodingKeys.alias: return .attribute
            default: return .element
        }
    }
}

// MARK: - SpeechElement
struct Speech: Codable, DynamicNodeEncoding {
    let speaker: [Speaker]?
    let line: [Line]
    let stagedir: [Stagedir]?
    let type: String?

    enum CodingKeys: String, CodingKey {
        case speaker, line, stagedir
        case type = "type"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Speech.CodingKeys.type: return .attribute
            default: return .element
        }
    }
}

// MARK: - LineLine
struct Line: Codable, DynamicNodeEncoding {
    let globalnumber: String
    let number: String?
    let form: String?
    let rhyme: String?
    let text, offset: String?
    let foreign: [Foreign]?
    let recite: [Recite]?
    let lb: [String]?
    let type: String?
    let part: String?
    let syllables:String?
    let dropcap: Dropcap?
    let name:[Name]?
    let emph: [Emph]?
    let rend: String?
    let order: String?

    enum CodingKeys: String, CodingKey {
        case globalnumber = "globalnumber"
        case number = "number"
        case rhyme = "rhyme"
        case form = "form"
        case text = ""
        case offset = "offset"
        case foreign, recite
        case lb = "lb"
        case type = "type"
        case part = "part"
        case syllables = "syllables"
        case dropcap
        case name
        case emph
        case rend = "rend"
        case order = "order"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Line.CodingKeys.globalnumber: return .attribute
        case Line.CodingKeys.number: return .attribute
        case Line.CodingKeys.rhyme: return .attribute
        case Line.CodingKeys.form: return .attribute
        case Line.CodingKeys.offset: return .attribute
        case Line.CodingKeys.lb: return .attribute
        case Line.CodingKeys.type: return .attribute
        case Line.CodingKeys.part: return .attribute
        case Line.CodingKeys.syllables: return .attribute
        case Line.CodingKeys.rend: return .attribute
        case Line.CodingKeys.order: return .attribute
            default: return .element
        }
    }
}

// MARK: - ReciteClass
struct Recite: Codable {
    let emph: [Emph]?
    let text: String

    enum CodingKeys: String, CodingKey {
        case emph
        case text = ""
    }
}

// MARK: - EmphClass
struct Emph: Codable, DynamicNodeEncoding {
    let dropcap: Dropcap?
    let rend: String?
    let text: String

    enum CodingKeys: String, CodingKey {
        case dropcap
        case rend = "rend"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Emph.CodingKeys.rend: return .attribute
            default: return .element
        }
    }
}

// MARK: - NameElement
struct Name: Codable, DynamicNodeEncoding  {
    let type: String?
    let text: String

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Name.CodingKeys.type: return .attribute
            default: return .element
        }
    }
}

// MARK: - Dropcap
struct Dropcap: Codable, DynamicNodeEncoding {
    let type, size, text: String
    let render: String?

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case size = "size"
        case render = "render"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Dropcap.CodingKeys.type: return .attribute
        case Dropcap.CodingKeys.size: return .attribute
        case Dropcap.CodingKeys.render: return .attribute
            default: return .element
        }
    }
}

// MARK: - Foreign
struct Foreign: Codable, DynamicNodeEncoding {
    let lang: String?
    let text: String

    enum CodingKeys: String, CodingKey {
        case lang = "xml:lang"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Foreign.CodingKeys.lang: return .attribute
            default: return .element
        }
    }
}

// MARK: - Speaker
struct Speaker: Codable, DynamicNodeEncoding {
    let short: String?
    let long: String?
    let text: String?
    let alias: String?
    let rend: String?

    enum CodingKeys: String, CodingKey {
        case short = "short"
        case long = "long"
        case text = ""
        case alias = "alias"
        case rend = "rend"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Speaker.CodingKeys.long: return .attribute
        case Speaker.CodingKeys.short: return .attribute
        case Speaker.CodingKeys.alias: return .attribute
        case Speaker.CodingKeys.rend: return .attribute
            default: return .element
        }
    }
}

// MARK: - StagedirStagedir
struct Stagedir: Codable, DynamicNodeEncoding {
    let dir: String?
    let action: Action?
    let sdglobalnumber, sdnumber: String
    let text: String?
    let emph: [Emph]?
    let name: [Name]?

    enum CodingKeys: String, CodingKey {
        case dir, action, emph, name
        case sdglobalnumber = "sdglobalnumber"
        case sdnumber = "sdnumber"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Stagedir.CodingKeys.sdnumber: return .attribute
        case Stagedir.CodingKeys.sdglobalnumber: return .attribute
            default: return .element
        }
    }
}

// MARK: - StagedirActionClass
struct Action: Codable, DynamicNodeEncoding {
    let actor: [Actor]?
    let recipient: [Actor]?
    let death: [Death]?
    let type: String
    let offstage: String?
    

    enum CodingKeys: String, CodingKey {
        case actor, recipient
        case type = "type"
        case offstage = "offstage"
        case death = "death"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Action.CodingKeys.type: return .attribute
        case Action.CodingKeys.offstage: return .attribute
            default: return .element
        }
    }
}


// MARK: - ActorClass
struct Actor: Codable, DynamicNodeEncoding {
    let alias: String?
    let text: String

    enum CodingKeys: String, CodingKey {
        case alias = "alias"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Actor.CodingKeys.alias: return .attribute
            default: return .element
        }
    }
}

// MARK: - DeathClass
struct Death: Codable, DynamicNodeEncoding {
    let cause: String?
    let text: String

    enum CodingKeys: String, CodingKey {
        case cause = "cause"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Death.CodingKeys.cause: return .attribute
            default: return .element
        }
    }
}

// MARK: - Editions
struct Editions: Codable {
    let written: Written
    let register: [Register]
    let edition: [Edition]
}

struct Written: Codable, DynamicNodeEncoding {
    let rend: String?
    let text: String

    enum CodingKeys: String, CodingKey {
        case rend = "rend"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Written.CodingKeys.rend: return .attribute
            default: return .element
        }
    }
}

// MARK: - Edition
struct Edition: Codable, DynamicNodeEncoding {
    let date: Register?
    let format: String
    let pssource: String
    let note, authorized, n, title, printer, publisher, order: String?

    enum CodingKeys: String, CodingKey {
        case date, title, printer, publisher, note, authorized
        case format = "format"
        case n = "n"
        case pssource = "pssource"
        case order = "order"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Edition.CodingKeys.format: return .attribute
        case Edition.CodingKeys.n: return .attribute
        case Edition.CodingKeys.pssource: return .attribute
        case Edition.CodingKeys.order: return .attribute
        case Edition.CodingKeys.authorized: return .attribute
            default: return .element
        }
    }
    
}

// MARK: - Register
struct Register: Codable, DynamicNodeEncoding {
    let when: String?
    let text: String

    enum CodingKeys: String, CodingKey {
        case when = "when"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Register.CodingKeys.when: return .attribute
            default: return .element
        }
    }
}

// MARK: - Performances
struct Performances: Codable {
    let performance: [Performance]
}

// MARK: - Performance
struct Performance: Codable {
    let date: Register?
    let company: String?
    let location: String?
}

// MARK: - Personae
struct Personae: Codable, DynamicNodeEncoding {
    let persona: [Persona]
    let playtitle: String

    enum CodingKeys: String, CodingKey {
        case persona
        case playtitle = "playtitle"
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Personae.CodingKeys.playtitle: return .attribute
            default: return .element
        }
    }
}

// MARK: - Persona
struct Persona: Codable, DynamicNodeEncoding {
    let persname: Persname
    let gender: String
    let archetype: String?
    let death: String?
    let mute:String?
    let id: String
    let persaliases: Persaliases?

    enum CodingKeys: String, CodingKey {
        case persname
        case gender = "gender"
        case archetype = "archetype"
        case death = "death"
        case mute
        case id = "id"
        case persaliases
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Persona.CodingKeys.gender: return .attribute
        case Persona.CodingKeys.archetype: return .attribute
        case Persona.CodingKeys.death: return .attribute
        case Persona.CodingKeys.id: return .attribute
            default: return .element
        }
    }
}

// MARK: - Persaliases
struct Persaliases: Codable {
    let persname: [Persname]
}

// MARK: - PersonaPersname
struct Persname: Codable, DynamicNodeEncoding {
    let short: String
    let numberOfLines, numberOfVerseLines, numberOfProseLines, numberOfLyricsLines: String?
    let text: String?

    enum CodingKeys: String, CodingKey {
        case short = "short"
        case numberOfLines = "numberOfLines"
        case numberOfVerseLines = "numberOfVerseLines"
        case numberOfProseLines = "numberOfProseLines"
        case numberOfLyricsLines = "numberOfLyricsLines"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Persname.CodingKeys.short: return .attribute
        case Persname.CodingKeys.numberOfLines: return .attribute
        case Persname.CodingKeys.numberOfVerseLines: return .attribute
        case Persname.CodingKeys.numberOfProseLines: return .attribute
        case Persname.CodingKeys.numberOfLyricsLines: return .attribute
            default: return .element
        }
    }
}

// MARK: - Playwrights
struct Playwrights: Codable {
    let playwright: [String]
}

// MARK: - Sourcedetails
struct Sourcedetails: Codable {
    let source: String
    let sourceurl: String
    let copyright, version, license: String
    let licenseurl: String?
    let termsurl: String?
}

// MARK: - Sources
struct Sources: Codable {
    let playsource: [Playsource]
}

// MARK: - Playsource
struct Playsource: Codable {
    let playsourcetitle:String
    let playsourceauthor, playsourcedate: String?
    let td: [String]?
}

// MARK: - Title
struct Title: Codable, DynamicNodeEncoding {
    let short: String
    let text: String?
    let abbr, lb: String?

    enum CodingKeys: String, CodingKey {
        case lb
        case short = "short"
        case abbr = "abbr"
        case text = ""
    }
    
    static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case Title.CodingKeys.short: return .attribute
        case Title.CodingKeys.abbr: return .attribute
            default: return .element
        }
    }
}

