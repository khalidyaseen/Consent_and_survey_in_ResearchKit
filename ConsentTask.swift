//
//  ConsentTask.swift
//  RK
//
//  Created by Yaseen on 04/06/17.
//  Copyright © 2017 Yaseen. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentTask: ORKOrderedTask{
    var steps = [ORKStep]()
    
    let consentDocument = ConsentDocument
    
    let visualConsentStep = ORKVisualConsentStep(identifier: "visualConsentStep", document: consentDocument)
    steps += [visualConsentStep]
    
    let signature = consentDocument.signatures!.first 
    let reviewConsentStep = ORKConsentReviewStep(identifier: "ConsentReviewStep", signature: signature, in: consentDocument)
    reviewConsentStep.text = "Review Consent!"
    reviewConsentStep.reasonForConsent = "Consent to join Study"
    steps += [reviewConsentStep]
    
    return ORKOrderedTask(identifier: "ConsentTask", steps: steps)
    
    
}
