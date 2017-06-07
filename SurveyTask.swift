//
//  SurveyTask.swift
//  RK
//
//  Created by Yaseen on 05/06/17.
//  Copyright © 2017 Yaseen. All rights reserved.
//

import Foundation
import ResearchKit



public var SurveyTask: ORKOrderedTask{
    var steps = [ORKStep]()

    let instructionsStep = ORKInstructionStep(identifier: "IntroStep")
    instructionsStep.title = "The Three Questions"
    instructionsStep.text = "Answer three questions and you will find heavens"
    steps += [instructionsStep]
    

    let nameAnswerFormat = ORKTextAnswerFormat(maximumLength: 20)
    nameAnswerFormat.multipleLines = false
    let nameQuestionStepTitle = "What is your name?"
    let nameQuestionStep = ORKQuestionStep(identifier: "QuestionStep", title: nameQuestionStepTitle, answer: nameAnswerFormat)
    steps += [nameQuestionStep]
    
    let questQuestionStepTitle = "Which Sport you like most?"
    let textChoices = [
        ORKTextChoice(text: "Cricket", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Football", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Tennis", value: 2 as NSCoding & NSCopying & NSObjectProtocol)
    ]
    let questAnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices)
    let questQuestionStep = ORKQuestionStep(identifier: "TextChoiceQuestionStep", title: questQuestionStepTitle, answer: questAnswerFormat)
    steps += [questQuestionStep]
    
    let colorQuestionStepTitle = "What is your favorite color?"
    let colorTuples = [
        (UIImage(named: "red")!, "Red"),
        (UIImage(named: "orange")!, "Orange"),
        (UIImage(named: "yellow")!, "Yellow"),
        (UIImage(named: "green")!, "Green"),
        (UIImage(named: "blue")!, "Blue"),
        (UIImage(named: "purple")!, "Purple")
    ]
    let imageChoices : [ORKImageChoice] = colorTuples.map {
        return ORKImageChoice(normalImage: $0.0, selectedImage: nil, text: $0.1, value: $0.1 as NSCoding & NSCopying & NSObjectProtocol)
    }
    let colorAnswerFormat: ORKImageChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: imageChoices)
    let colorQuestionStep = ORKQuestionStep(identifier: "ImageChoiceQuestionStep", title: colorQuestionStepTitle, answer: colorAnswerFormat)
    steps += [colorQuestionStep]
    
    // another way of defining a question step
    
    let BoolQuest = ORKQuestionStep(identifier: "yes-no-step")
    BoolQuest.title = NSLocalizedString("Do you feel good?", comment: "")
    BoolQuest.answerFormat = ORKBooleanAnswerFormat()
    steps += [BoolQuest]
    
    let dob = ORKQuestionStep(identifier: "dob")
    dob.title = NSLocalizedString("Enter Your DOB", comment: "")
//    dob.answerFormat = ORKDateAnswerFormat(style: <#T##ORKDateAnswerStyle#>, defaultDate: someDate, minimumDate: minDate, maximumDate: maxDate, calendar: nil )
    dob.answerFormat = ORKScaleAnswerFormat(maximumValue: 100, minimumValue: 0, defaultValue: 10, step: 10)
    steps += [dob]
    
    let location = ORKQuestionStep(identifier: "location")
    location.title = NSLocalizedString("Where do you lve", comment: "")
    location.answerFormat = ORKLocationAnswerFormat()
    steps += [location]
    
    var orkimages = [ORKImageChoice]()
    
    let img = ORKQuestionStep(identifier: "imagechoice")
    img.title = NSLocalizedString("choose image", comment: "")
    img.answerFormat = ORKImageChoiceAnswerFormat()
    steps += [location]
    
    let summaryStep = ORKCompletionStep(identifier: "SummaryStep")
    summaryStep.title = "Thank You!"
    summaryStep.text = "we have collected your data and you will be notified soon after your data is evaluvated"
    steps += [summaryStep]

    return ORKOrderedTask(identifier: "Survey Task", steps: steps)
}
