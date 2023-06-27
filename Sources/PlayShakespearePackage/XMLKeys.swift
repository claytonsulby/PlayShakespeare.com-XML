//
//  File.swift
//  
//
//  Created by Clayton Sulby on 6/26/23.
//

import Foundation

enum XMLKeys: String, CaseIterable {
    case act
    case action
    case actor
    case acttitle
    case company
    case copyright
    case date
    case death
    case dir
    case edition
    case editions
    case foreign
    case language
    case license
    case licenseurl
    case line
    case location
    case performance
    case performances
    case persaliases
    case persname
    case persona
    case personae
    case play
    case playsource
    case playsourceauthor
    case playsourcedate
    case playsourcetitle
    case playwright
    case playwrights
    case printer
    case publisher
    case recipient
    case recite
    case register
    case scene
    case scenelanguage
    case scenelocation
    case scenepersona
    case scenepersonae
    case scenetime
    case scenetitle
    case source
    case sourcedetails
    case sources
    case sourceurl
    case speaker
    case speech
    case stagedir
    case termsurl
    case title
    case version
    case written
    
    public func type() -> Any {
        switch self {
        case .act:
            return Act.self
        case .action:
            return Action.self
        case .actor:
            return Actor.self
//        case .acttitle:
//            return acttitle.self
//        case .company:
//            return company.self
//        case .copyright:
//            return copyright.self
        case .date:
            return Register.self
        case .death:
            return Death.self
//        case .dir:
//            return dir.self
        case .edition:
            return Edition.self
        case .editions:
            return Editions.self
        case .foreign:
            return Foreign.self
        case .language:
            return Language.self
//        case .license:
//            return license.self
//        case .licenseurl:
//            return licenseurl.self
        case .line:
            return Line.self
//        case .location:
//            return location.self
        case .performance:
            return Performance.self
        case .performances:
            return Performances.self
        case .persaliases:
            return Persaliases.self
        case .persname:
            return Persname.self
        case .persona:
            return Persona.self
        case .personae:
            return Personae.self
        case .play:
            return Play.self
//        case .playsource:
//            return Playsource.self
//        case .playsourceauthor:
//            return playsourceauthor.self
//        case .playsourcedate:
//            return playsourcedate.self
//        case .playsourcetitle:
//            return playsourcetitle.self
//        case .playwright:
//            return playwright.self
        case .playwrights:
            return Playwrights.self
//        case .printer:
//            return printer.self
//        case .publisher:
//            return publisher.self
//        case .recipient:
//            return recipient.self
//        case .recite:
//            return recite.self ///xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
        case .register:
            return Register.self
        case .scene:
            return Scene.self
        case .scenelanguage:
            return Scenelanguage.self
//        case .scenelocation:
//            return scenelocation.self
        case .scenepersona:
            return Scenepersona.self
        case .scenepersonae:
            return Scenepersonae.self
//        case .scenetime:
//            return scenetime.self
//        case .scenetitle:
//            return scenetitle.self
//        case .source:
//            return source.self
        case .sourcedetails:
            return Sourcedetails.self
        case .sources:
            return Sources.self
//        case .sourceurl:
//            return sourceurl.self
        case .speaker:
            return Speaker.self
        case .speech:
            return Speech.self
        case .stagedir:
            return Stagedir.self
//        case .termsurl:
//            return termsurl.self
        case .title:
            return Title.self
//        case .version:
//            return version.self
//        case .written:
//            return written.self
        default:
            return String.self
        }
    }
}
