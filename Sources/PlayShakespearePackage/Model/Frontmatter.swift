// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Frontmatter
struct Frontmatter: Codable {
    let readeraddress: Readeraddress
    let frontispiece: Frontispiece
    let dedication: Dedication
    let preface: Preface
    let eulogy: [Eulogy]
    let companyactors: Companyactors
    let toc: Toc
    let sourcedetails: Sourcedetails
}

// MARK: - Companyactors
struct Companyactors: Codable {
    let title: String
    let subtitle: [Line]
    let body: CompanyactorsBody
}

// MARK: - CompanyactorsBody
struct CompanyactorsBody: Codable {
    let actorname: [String]
}

// MARK: - Dedication
struct Dedication2: Codable {
    let flourish: String
    let title: Title
    let subtitle:[Line]
    let salutation:[Line]
    let line: [Line]
    let closing:[Line]
    let author:[Line]
}

// MARK: - Eulogy
struct Eulogy: Codable {
    let flourish: String?
    let title: Title?
    let subtitle:[Line]
    let body: EulogyBody
    let eulogyAuthor, author: String

    enum CodingKeys: String, CodingKey {
        case flourish, title, subtitle, body
        case eulogyAuthor = "author"
        case author = "_author"
    }
}

// MARK: - EulogyBody
struct EulogyBody: Codable {
    let line: [Line]
}

// MARK: - Frontispiece
struct Frontispiece: Codable {
    let toptitle: Toptitle
    let engraving: Engraving
    let place: String
    let printer: Printer
}

// MARK: - Engraving
struct Engraving: Codable {
    let image: String
    let illustrator: Illustrator
}

// MARK: - Illustrator
struct Illustrator: Codable {
    let name, role, location: String
}

// MARK: - Printer
struct Printer: Codable {
    let year, text: String

    enum CodingKeys: String, CodingKey {
        case year
        case text = ""
    }
}

// MARK: - Toptitle
struct Toptitle: Codable {
    let author: ToptitleAuthor
    let title: ToptitleTitle
    let subtitle: String
}

// MARK: - ToptitleAuthor
struct ToptitleAuthor: Codable {
    let line: [Line]
}

// MARK: - ToptitleTitle
struct ToptitleTitle: Codable {
    let line: [Line]
}

// MARK: - Preface
struct Preface: Codable {
    let flourish, salutation: String
    let line: [Line]
    let author: Author
}

// MARK: - SubtitleClass
struct Author: Codable {
    let lb: String?
    let text: String

    enum CodingKeys: String, CodingKey {
        case lb
        case text = ""
    }
}

// MARK: - Readeraddress
struct Readeraddress: Codable {
    let title: String
    let body: ReaderaddressBody
}

// MARK: - ReaderaddressBody
struct ReaderaddressBody: Codable {
    let line: [Line]
    let author: String
}


// MARK: - Toc
struct Toc: Codable {
    let flourish, title: String
    let subtitle:[Line]
    let toclist: Toclist
}

// MARK: - Toclist
struct Toclist: Codable {
    let genre: [Genre]
}

// MARK: - Genre
struct Genre: Codable {
    let genretitle: String
    let playname: [Playname]
    let type: String

    enum CodingKeys: String, CodingKey {
        case genretitle, playname
        case type = "_type"
    }
}

// MARK: - Playname
struct Playname: Codable {
    let dropcap: Dropcap?
    let foliopage: String
    let order: String?
    let text: String

    enum CodingKeys: String, CodingKey {
        case dropcap
        case foliopage = "_foliopage"
        case order = "_order"
        case text = "__text"
    }
}
