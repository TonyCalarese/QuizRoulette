//
//  GameViewController.swift
//  QuizRoulletteGame
//
//  Created by Tony Calarese on 10/16/19.
//  Copyright © 2019 Tony Calarese. All rights reserved.
//
import Foundation
import UIKit


//Sources of Reference:
//https://youtu.be/DxCydBmOqXU
//https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html
//Source of Reference when workin with functions: https://docs.swift.org/swift-book/LanguageGuide/Functions.html
//More sources
//https://www.youtube.com/watch?v=pDHguzqvwbg
//https://www.youtube.com/watch?v=09TeUXjzpKs
//https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/ConnectTheUIToCode.html
//https://github.com/calebrwells/A-Swiftly-Tilting-Planet/blob/master/2018/UIGestureRecognizers/Handling%20Swipe%20Gestures/Handling%20Swipe%20Gestures/ViewController.swift
//Question structure
class Questions{
    let mAnswer: String //Will Store the set answer for the question
    let mQuestionText: String //Will store the text for the Question
    
    //Initalizer
    init(Answer: String, Question: String) {
        mAnswer = Answer
        mQuestionText = Question
    }


    func getAnswer() -> String {return mAnswer} //Will return the answer of the Question
    func getQuestion() -> String {return mQuestionText} //Will
    
    func compare(UAnswer:String) -> Bool {
        print(UAnswer)
        print(mAnswer)
        return UAnswer == mAnswer

    }
};
