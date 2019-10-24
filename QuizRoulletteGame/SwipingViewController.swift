//
//  GameViewController.swift
//  QuizRoulletteGame
//
//  Created by Tony Calarese on 10/16/19.
//  Copyright © 2019 Tony Calarese. All rights reserved.
//
import Foundation
import UIKit



//Main View Controller
class SwipingViewController: UIViewController {
    //Getting the Current Index that the user is on
    var mCurrentIndex = 0 //Will Act as the Current Index that the user is on
    var mScore = 0 //Will act as the users Score
    //Initialize Questions
    let mQuestionBank = [Questions(Answer: "A", Question: "Select A"),
                         Questions(Answer: "B", Question: "Select B"),
                         Questions(Answer: "C", Question: "Select C"),
                         Questions(Answer: "D", Question: "Select D"),
                         Questions(Answer: "A", Question: "Select A")]
    //On Load
    override func viewDidLoad() {
        super.viewDidLoad()
        //Will always go to the first question because of the
        self.mQuestionLabel.text = mQuestionBank[mCurrentIndex].getQuestion()
        getQuestion()
    }
    
    //Core Class Functions
    func processAnswer(answer: String) -> Void {
          if mCurrentIndex >= mQuestionBank.count
                { //If they have answered all the questions do not compare anwers anymore
                    self.mQuestionLabel.text = getFinishingText()
                }
                else
                {
                  adjustScore(correctness: mQuestionBank[mCurrentIndex].compare(UAnswer: answer))
              }
      }
      
      //Checking if the user was correct with their answers
      func adjustScore(correctness: Bool) -> Void{
          if correctness == true {mScore+=1}
      }
      
      //Go to the next question by incrementing the index and getting that question
      func setNextQuestion() -> Void{
          mCurrentIndex+=1
          getQuestion()
      }
    
      //Get the Current Questions
      //Source: https://stackoverflow.com/questions/24275632/how-do-i-change-text-in-a-label-with-swift
      func getQuestion() -> Void{
          self.mQuestionLabel.text = mQuestionBank[mCurrentIndex].mQuestionText
      }
    
      //This function will stop the questions from filling the area and then make sure that the user goes backwards.
      func getFinishingText() -> String{ //Being worked on as I am figuring out the varaibles part with segues
          return "You have a Score of " + String(mScore)
      }
    //Question Label and Gestures
    @IBOutlet weak var mQuestionLabel: UILabel!
    //Source for Handling swipe gestures https://developer.apple.com/documentation/uikit/touches_presses_and_gestures/handling_uikit_gestures/handling_swipe_gestures



}
