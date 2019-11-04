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

class Questions2{
    let mAnswer: String //Will Store the set answer for the question
    let mQuestionTextSwipe, mQuestionTextButton: String //Will store the text for the Question
    
    //Initalizer
    init(Answer: String, SwipeText: String, ButtonText: String) {
        mAnswer = Answer
        mQuestionTextSwipe = SwipeText
        mQuestionTextButton = ButtonText
    }
   

    func getAnswer() -> String {return mAnswer} //Will return the answer of the Question
    
    func getQuestion(KEY: String) -> String {
        if KEY == "SWIPE"{
            return mQuestionTextSwipe
        }
        else if KEY == "BUTTON"{
            return mQuestionTextButton
        }
        else{
            return "あなたのキーあなたはだめですよ"
        }
    }
    
    //return tre or false depending if the user got the right answer or not
    func compare(UAnswer:String) -> Bool {
        return UAnswer == mAnswer
    }
//Dirrectly pulled from the view Controllers
    /*
       //Core Class Functions
       func processAnswer(answer: String) -> ßßß {
            //then check for the next question
            if mCurrentIndex == mQuestionBank.count - 1 //Want to make sure we do not go out of range
            { //If they have answered all the questions do not compare anwers anymore
                self.mQuestionLabel.text = "STOP, SEE TONY"
            }
            else
            {
                adjustScore(correctness: mQuestionBank[mCurrentIndex].compare(UAnswer: answer)) //Adjust the score first
                mCurrentIndex+=1 //if there are questions then go to the next question
                getQuestion()
            }
        }
         */
};


