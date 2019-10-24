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
//https://www.youtube.com/watch?v=pDHguzqvwbg
//Question structure
class Questions {
    let mAnswer: String //Will Store the set answer for the question
    let mQuestionText: String //Will store the text for the Question
    
    
    init(Answer: String, Question: String) {
        mAnswer = Answer
        mQuestionText = Question
    }
   

    func getAnswer() -> String {return mAnswer} //Will return the answer of the Question
    func getQuestion() -> String {return mQuestionText} //Will
    
    func compare(UAnswer:String) -> Bool {return UAnswer == mAnswer}
};
