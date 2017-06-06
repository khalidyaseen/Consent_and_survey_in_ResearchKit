//
//  ConsentDocument.swift
//  RK
//
//  Created by Yaseen on 04/06/17.
//  Copyright © 2017 Yaseen. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentDocument: ORKConsentDocument{
        let consentDocument = ORKConsentDocument()
        consentDocument.title = "Testing consent"
    let consentSectionTypes: [ORKConsentSectionType] = [
        .overview,
        .dataGathering,
        .privacy,
        .dataUse,
        .timeCommitment,
        .studySurvey,
        .studyTasks,
        .withdrawing
    ]
    //var consentSections = [ORKConsentSection]()
    
//    let consentDocument = ORKConsentDocument()
//    consentDocument.title = NSLocalizedString("Study Consent Form", comment: "")
    
    let section1 = ORKConsentSection(type: .overview)
    section1.summary = NSLocalizedString("We only Expect Your Dedicated time towards the survey", comment: "")
    section1.content = NSLocalizedString("We assure your data with us is secure. We value the privacy.", comment: "")
    
    let section2 = ORKConsentSection(type: .dataGathering)
    section2.summary = NSLocalizedString("For now we dont need any sensors permission", comment: "")
    section2.content = NSLocalizedString("Chillout we need no sensors for now may be laters we will surely inform you about that", comment: "")
    
    let section3 = ORKConsentSection(type: .privacy)
    section3.summary = NSLocalizedString( "We guaratee the security of your data", comment: "")
    section3.content = NSLocalizedString("Our servers are fully secured and our data security policy is strong so there are no or less chances of data breach", comment: "")
    
    let section4 = ORKConsentSection(type: .dataUse)
    section4.summary = NSLocalizedString("We need your data  just for research pupose", comment: "")
    section4.content = NSLocalizedString("Our research team might study your data for research purpose but we assure it will be safe with us", comment: "")
    
    let section5 = ORKConsentSection(type: .timeCommitment)
    section5.summary = NSLocalizedString("we expect 10 mins daily", comment: "")
    section5.content = NSLocalizedString("At least we rewuire 10 minutes every day and also acyiveness when any runtime survey needs to be done", comment: "")
    
    let section6 = ORKConsentSection(type: .studySurvey)
    section6.summary = NSLocalizedString("Data will be collected just for research purpose", comment: "")
    section6.content = NSLocalizedString("your data will be distributed in R&D section of our organisation keeping your identity anonymous", comment: "")
    
    let section7 = ORKConsentSection(type: .studyTasks)
    section7.summary = NSLocalizedString("we expect 10 mins daily", comment: "")
    section7.content = NSLocalizedString("At least we rewuire 10 minutes every day and also acyiveness when any runtime survey needs to be done", comment: "")
    
    let section8 = ORKConsentSection(type: .withdrawing)
    section8.summary = NSLocalizedString("we expect 10 mins daily", comment: "")
    section8.content = NSLocalizedString("At least we rewuire 10 minutes every day and also acyiveness when any runtime survey needs to be done", comment: "")
    
    consentDocument.sections = [section1, section2, section3, section4, section5, section6]
//    var consentSections: [ORKConsentSection] = consentSectionTypes.map { consentSectionType in
//        let consentSection = ORKConsentSection(type: consentSectionType)
//        consentSection.summary = "If you wish to complete this study..."
//        consentSection.content = "In this study you will be asked five questions and your voice will be recorded for ten seconds."
//        return consentSection
//    }
    //consentDocument.sections = consentSections
    
    consentDocument.addSignature(ORKConsentSignature(forPersonWithTitle: nil, dateFormatString: nil, identifier: "CosentDocumentParticipantsSignature"))
    
    return consentDocument
}
