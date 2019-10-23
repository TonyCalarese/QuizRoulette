//
//  pressingViewController.swift
//  QuizRoulletteGame
//
//  Created by Zeus on 10/23/19.
//  Copyright © 2019 Tony Calarese. All rights reserved.
//
import Foundation
import UIKit

//Sources of Reference:
//https://youtu.be/DxCydBmOqXU


//Question structure
struct Questions {
    let mAnswer: String
    let mQuestionText: String
};
//Main View Controller
class QuizViewController: UIViewController {
    
    var mCurrentIndex = 0;
    var mCurrentAnswer = "none"
    var mCurrentQuestion = "Sample Question"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initialize Questions
        
            let mQuestion1 = Questions(mAnswer: "A", mQuestionText: "Select A")
            let mQuestion2 = Questions(mAnswer: "B", mQuestionText: "Select B")
            let mQuestion3 = Questions(mAnswer: "C", mQuestionText: "Select C")
            let mQuestion4 = Questions(mAnswer: "D", mQuestionText: "Select D")
            let mQuestion5 = Questions(mAnswer: "A", mQuestionText: "Select A")
        let mQuestionBank = [mQuestion1, mQuestion2, mQuestion3, mQuestion4, mQuestion5]

    }
    //Source of Reference when workin with functions: https://docs.swift.org/swift-book/LanguageGuide/Functions.html
    func getQuestion(index: Int) -> (Question: String, Answer: String)  {
        return ("Hello", "World")
    }
    
    func getFinishingText(type: String) -> String{
        //Being worked on as I am figuring out the varaibles part with segues
        return "Swipe Down if Screen is purple, Hit back if blue"
    }
}
