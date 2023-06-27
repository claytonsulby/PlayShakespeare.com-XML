//
//  File.swift
//  
//
//  Created by Clayton Sulby on 6/25/23.
//

import Foundation

enum PSPath: String, CaseIterable {
    
    case allsWellThatEndsWell = "ps_alls_well_that_ends_well"
    case antonyCleopatra = "ps_antony_cleopatra"
    case asYouLikeIt = "ps_as_you_like_it"
    case comedyOfErrors = "ps_comedy_of_errors"
    case coriolanus = "ps_coriolanus"
    case cymbeline = "ps_cymbeline"
    case hamlet = "ps_hamlet"
    case henryIvPt1 = "ps_henry_iv_pt1"
    case henryIvPt2 = "ps_henry_iv_pt2"
    case henryV = "ps_henry_v"
    case henryViPt1 = "ps_henry_vi_pt1"
    case henryViPt2 = "ps_henry_vi_pt2"
    case henryViPt3 = "ps_henry_vi_pt3"
    case henryViii = "ps_henry_viii"
    case juliusCaesar = "ps_julius_caesar"
    case kingJohn = "ps_king_john"
    case kingLear = "ps_king_lear"
    case kingRichardIi = "ps_king_richard_ii"
    case loversComplaint = "ps_lovers_complaint"
    case lovesLaboursLost = "ps_loves_labours_lost"
    case macbeth = "ps_macbeth"
    case measureForMeasure = "ps_measure_for_measure"
    case merchantOfVenice = "ps_merchant_of_venice"
    case merryWivesOfWindsor = "ps_merry_wives_of_windsor"
    case midsummerNightsDream = "ps_midsummer_nights_dream"
    case muchAdoAboutNothing = "ps_much_ado_about_nothing"
    case othello = "ps_othello"
    case passionatePilgrim = "ps_passionate_pilgrim"
    case pericles = "ps_pericles"
    case phoenixAndTurtle = "ps_phoenix_and_turtle"
    case rapeOfLucrece = "ps_rape_of_lucrece"
    case richardIii = "ps_richard_iii"
    case romeoAndJuliet = "ps_romeo_and_juliet"
    case sirThomasMore = "ps_sir_thomas_more"
    case sonnets = "ps_sonnets"
    case tamingOfTheShrew = "ps_taming_of_the_shrew"
    case tempest = "ps_tempest"
    case timonOfAthens = "ps_timon_of_athens"
    case titusAndronicus = "ps_titus_andronicus"
    case toTheQueen = "ps_to_the_queen"
    case troilusAndCressida = "ps_troilus_and_cressida"
    case twelfthNight = "ps_twelfth_night"
    case twoGentlemenOfVerona = "ps_two_gentlemen_of_verona"
    case twoNobleKinsmen = "ps_two_noble_kinsmen"
    case venusAndAdonis = "ps_venus_and_adonis"
    case wintersTale = "ps_winters_tale"

    // First Folio
    case wintersTaleFf = "ps_winters_tale_FF"
    case allsWellThatEndsWellFf = "ps_alls_well_that_ends_well_FF"
    case antonyCleopatraFf = "ps_antony_cleopatra_FF"
    case asYouLikeItFf = "ps_as_you_like_it_FF"
    case comedyOfErrorsFf = "ps_comedy_of_errors_FF"
    case coriolanusFf = "ps_coriolanus_FF"
    case cymbelineFf = "ps_cymbeline_FF"
    case firstFolioFrontmatter = "ps_first_folio_frontmatter"
    case hamletFf = "ps_hamlet_FF"
    case henryIvPt1Ff = "ps_henry_iv_pt1_FF"
    case henryIvPt2Ff = "ps_henry_iv_pt2_FF"
    case henryVFf = "ps_henry_v_FF"
    case henryViPt1Ff = "ps_henry_vi_pt1_FF"
    case henryViPt2Ff = "ps_henry_vi_pt2_FF"
    case henryViPt3Ff = "ps_henry_vi_pt3_FF"
    case henryViiiFf = "ps_henry_viii_FF"
    case juliusCaesarFf = "ps_julius_caesar_FF"
    case kingJohnFf = "ps_king_john_FF"
    case kingLearFf = "ps_king_lear_FF"
    case kingRichardIiFf = "ps_king_richard_ii_FF"
    case lovesLaboursLostFf = "ps_loves_labours_lost_FF"
    case macbethFf = "ps_macbeth_FF"
    case measureForMeasureFf = "ps_measure_for_measure_FF"
    case merchantOfVeniceFf = "ps_merchant_of_venice_FF"
    case merryWivesOfWindsorFf = "ps_merry_wives_of_windsor_FF"
    case midsummerNightsDreamFf = "ps_midsummer_nights_dream_FF"
    case muchAdoAboutNothingFf = "ps_much_ado_about_nothing_FF"
    case othelloFf = "ps_othello_FF"
    case richardIiiFf = "ps_richard_iii_FF"
    case romeoAndJulietFf = "ps_romeo_and_juliet_FF"
    case tamingOfTheShrewFf = "ps_taming_of_the_shrew_FF"
    case tempestFf = "ps_tempest_FF"
    case timonOfAthensFf = "ps_timon_of_athens_FF"
    case titusAndronicusFf = "ps_titus_andronicus_FF"
    case troilusCressidaFf = "ps_troilus_cressida_FF"
    case twelfthNightFf = "ps_twelfth_night_FF"
    case twoGentlemenOfVeronaFf = "ps_two_gentlemen_of_verona_FF"

    //Apocrypha
    case ardenOfFaversham = "ps_arden_of_faversham"
    case birthOfMerlin = "ps_birth_of_merlin"
    case doubleFalsehood = "ps_double_falsehood"
    case edmundIronside = "ps_edmund_ironside"
    case edwardIii = "ps_edward_iii"
    case fairEm = "ps_fair_em"
    case funeralElegy = "ps_funeral_elegy"
    case londonProdigal = "ps_london_prodigal"
    case merryDevilOfEdmonton = "ps_merry_devil_of_edmonton"
    case mucedorus = "ps_mucedorus"
    case puritan = "ps_puritan"
    case secondMaidensTragedy = "ps_second_maidens_tragedy"
    case sejanus = "ps_sejanus"
    case shallIDie = "ps_shall_i_die"
    case sirJohnOldcastle = "ps_sir_john_oldcastle"
    case spanishTragedy = "ps_spanish_tragedy"
    case thomasLordCromwell = "ps_thomas_lord_cromwell"
    case thomasOfWoodstock = "ps_thomas_of_woodstock"
    case tragedyOfLocrine = "ps_tragedy_of_locrine"
    case troublesomeReignKingJohn = "ps_troublesome_reign_king_john"
    case yorkshireTragedy = "ps_yorkshire_tragedy"
}

extension PSPath {
    
    static let poems:[PSPath] = [
        loversComplaint,
        passionatePilgrim,
        phoenixAndTurtle,
        rapeOfLucrece,
        sonnets,
        toTheQueen,
        venusAndAdonis,
        firstFolioFrontmatter,
        funeralElegy,
        shallIDie
    ]
    
}
