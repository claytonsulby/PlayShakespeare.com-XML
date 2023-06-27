import XCTest
@testable import PlayShakespearePackage
import XMLCoder
import SwiftyXMLParser

final class PlayShakespearePackageTests: XCTestCase {
    
    let decoder:XMLDecoder = XMLDecoder()
    
    override func setUp() {
        decoder.shouldProcessNamespaces = true
        decoder.trimValueWhitespaces = true

        super.setUp()
    }
    
    static var allTests:[String:String] = [:]
    
}

extension PlayShakespearePackageTests {
    
    //TODO: fails "ps_first_folio_frontmatter"
    func testtt() {
        PSPath.allCases.forEach { path in
            guard let url:URL = Bundle.module.url(forResource: path.rawValue, withExtension: "xml"),
                  let xml:PSPlay = try? decoder.decode(PSPlay.self, from: Data(contentsOf: url)) else {
                print(path.rawValue)
                return XCTFail("[XXXXXX] Failed to load play - play:\(path.rawValue)")
            }
            return
        }
    }
    
}

extension PlayShakespearePackageTests {
    
    func loadPlay(play: PSPath) -> URL? {
        let url:URL? = Bundle.module.url(forResource: play.rawValue, withExtension: "xml")
        guard let url = url else {
            XCTFail("[XXXXXX] loadPlay Failed: \(play.rawValue)")
            return nil
        }
        return url
    }
    
    func items(roots:[String] = ["play", "poem"], path: @escaping (XML.Accessor) -> [XML.Accessor] = { [$0] }) -> [String] {
        
        return PSPath.allCases.compactMap({ play in
            if let url:URL = loadPlay(play: play),
               let xml = try? XML.parse(Data(contentsOf: url)) {
                return xml
            }
            return nil
        }).flatMap { xml in
            return roots.flatMap({ root in
                let strings = xml[root].flatMap({ path($0) }).compactMap({ try? XML.Converter($0).makeDocument() })
                return strings
            })
        }
    }
    
    
    func items(play: PSPath, roots:[String] = ["play", "poem"], path: @escaping (XML.Accessor) -> [XML.Accessor] = { [$0] }) -> [String] {
        if let url:URL = loadPlay(play: play),
           let xml = try? XML.parse(Data(contentsOf: url)) {
            
            return roots.flatMap({ root in
                let strings = xml[root].flatMap({ path($0) }).compactMap({ try? XML.Converter($0).makeDocument() })
                return strings
            })
        }
        XCTFail("[XXXXXX] failed to get items")
        return []
    }
    
    func test<T: Codable>(roots:[String] = ["play", "poem"], type: T.Type, path: @escaping (XML.Accessor) -> [XML.Accessor]) {
        let items = items(roots: roots, path: { path($0) })
        guard !items.isEmpty else { return XCTFail("[XXXXXX] xml parse failed")}
        items.forEach { item in
            let xml:T? = try? decoder.decode(T.self, from: Data(item.replacingNonAsciiAmpersands().utf8))
            if xml == nil {
                XCTFail("[XXXXXX] decode failed - type:\(T.self) item:\(item)")
            }
        }
    }
    
    func test<T: Codable>(play:PSPath, roots:[String] = ["play", "poem"], type: T.Type, path: @escaping (XML.Accessor) -> [XML.Accessor]) {
        let items = items(play: play, roots: roots, path: { path($0) })
        items.forEach { item in
            let xml:T? = try? decoder.decode(T.self, from: Data(item.replacingNonAsciiAmpersands().utf8))
            if xml == nil {
                XCTFail("[XXXXXX] decode failed - play:\(play.rawValue) type:\(T.self) item:\(item)")
            }
        }
    }
    
    func test<T: Codable>(roots:[String] = ["play", "poem"], type: T.Type, path: @escaping (XML.Accessor) -> XML.Accessor = { $0 }) {
        return test(roots: roots, type: type.self, path: { [path($0)] })
    }
}
extension PlayShakespearePackageTests {
    
    func test_ampersand() {
        let str = "<a>Romeo & Juliet The Lord Chamberlain&#8217;s (Hunsdon&#8217;s) Men &&&&&</a>".replacingNonAsciiAmpersands()
        let xml:String? = try? decoder.decode(String.self, from: str.data(using: .utf8)!)
        print(xml ?? "XXXXX")
        XCTAssertTrue(true)
    }
    
}

extension PlayShakespearePackageTests {
    
    func testAllTitle() {
        test(type: Title.self, path: { $0.flatMap({ $0["title"] }) })
    }
    
    func testAllPlaywrights() {
        test(type: Playwrights.self, path: { $0.flatMap({ $0["playwrights"] }) })
    }
    
    func testAllEditions() {
        test(type: Playwrights.self, path: { $0.flatMap({ $0["editions"] }) })
    }
    
    func testAllSources() {
        test(type: Playwrights.self, path: { $0.flatMap({ $0["sources"] }) })
    }
    
    func testAllSourcedetails() {
        test(type: Playwrights.self, path: { $0.flatMap({ $0["sourcedetails"] }) })
    }
}

extension PlayShakespearePackageTests {
    
    func testAllPoems() {
        test(roots: ["poem"], type: PSPlay.self)
    }
    
    func testAllPoemintro() {
        test(roots: ["poem"], type: Poemintro.self, path: { $0["poemintro"] })
    }
    
    func testAllPoembody() {
        test(roots: ["poem"], type: Poembody.self, path: { $0["poembody"] })
    }
    
    func testAllSonnets() {
        test(roots: ["poem"], type: Sonnets.self, path: { $0["sonnets"] })
    }
    
}

extension PlayShakespearePackageTests {
    
    func testAllPlays() {
        test(roots: ["play"], type: PSPlay.self)
    }
    
    func testAllPerformances() {
        test(roots: ["play"], type: Performances.self, path: { $0["performances"] })
    }
    
    func testAllPersonae() {
        test(roots: ["play"], type: Personae.self, path: { $0["personae"] })
    }
    
    func testAllActs() {
        test(roots: ["play"], type: Act.self, path: { $0.flatMap({ $0["act"] }) })
    }
    
    func testAllScenes() {
        test(roots: ["play"], type: Scene.self, path: { $0.flatMap({ $0["act"] }).flatMap({ $0["scene"] }) })
    }
    
    func testAllScenetitle() {
        test(roots: ["play"], type: Scenetitle.self, path: { $0.flatMap({ $0["act"] }).flatMap({ $0["scene"] }).flatMap({ $0["scenetitle"] }) })
    }
    
    func testAllScenepersonae() {
        test(roots: ["play"], type: Scenepersonae.self, path: { $0.flatMap({ $0["act"] }).flatMap({ $0["scene"] }).flatMap({ $0["scenepersonae"] }) })
    }
    
    func testAllScenelanguage() {
        test(roots: ["play"], type: Scenelanguage.self, path: { $0.flatMap({ $0["act"] }).flatMap({ $0["scene"] }).flatMap({ $0["scenelanguage"] }) })
    }
    
    func testAllSongs() {
        test(roots: ["play"], type: Scenetitle.self, path: { $0.flatMap({ $0["act"] }).flatMap({ $0["scene"] }).flatMap({ $0["song"] }) })
    }
    
    func testAllStagedir() {
        test(roots: ["play"], type: Stagedir.self, path: { $0.flatMap({ $0["act"] }).flatMap({ $0["scene"] }).flatMap({ $0["stagedir"] }) })
    }
    
    func testAllSpeech() {
        test(roots: ["play"], type: Speech.self, path: { $0.flatMap({ $0["act"] }).flatMap({ $0["scene"] }).flatMap({ $0["speech"] }) })
    }
    
    func testAllSpeaker() {
        test(roots: ["play"], type: Speaker.self, path: { $0.flatMap({ $0["act"] }).flatMap({ $0["scene"] }).flatMap({ $0["speech"] }).flatMap({ $0["speaker"] }) })
    }
    
    func testAllLine() {
        test(roots: ["play"], type: Line.self, path: { $0.flatMap({ $0["act"] }).flatMap({ $0["scene"] }).flatMap({ $0["speech"] }).flatMap({ $0["line"] }) })
    }
    
    func testAllForeign() {
        test(roots: ["play"], type: Foreign.self, path: { $0.flatMap({ $0["act"] }).flatMap({ $0["scene"] }).flatMap({ $0["speech"] }).flatMap({ $0["line"] }).flatMap({ $0["foreign"] }) })
    }
    
    func testAllSpeechStagedir() {
        test(roots: ["play"], type: Stagedir.self, path: { $0.flatMap({ $0["act"] }).flatMap({ $0["scene"] }).flatMap({ $0["speech"] }).flatMap({ $0["stagedir"] }) })
    }
    
}
