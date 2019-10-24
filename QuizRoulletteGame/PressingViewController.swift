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
class PressingViewController: UIViewController {
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
           getQuestion() //Will always go to the first question because of the index being 0 on start
       }
       
       //Core Class Functions
       func processAnswer(answer: String) -> Void {
            
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
         
         //Checking if the user was correct with their answers
         func adjustScore(correctness: Bool) -> Void{
            if correctness == true {mScore+=1}
         }
         //Get the Current Questions
         //Source: https://stackoverflow.com/questions/24275632/how-do-i-change-text-in-a-label-with-swift
         func getQuestion() -> Void{
            self.mQuestionLabel.text = mQuestionBank[mCurrentIndex].mQuestionText
         }
       
         //This function will stop the questions from filling the area and then make sure that the user goes backwards.
         func getFinishingText() -> String{ //Being worked on as I am figuring out the varaibles part with segues
             return "You got a Score of " + String(mScore) + " Correct! \nPress Back to go to next section"
         }
       
      

    
    //Declaring the Buttons Page
    //@IBOutlet weak var mQuestionLabel: UILabel!
    @IBOutlet var mQuestionLabel: UILabel!
    //@IBOutlet weak var mQuestionLabel: UILabel!
    //Button Click Functions
    
    @IBAction func mA_Clicked(_ sender: Any) {
        print("You Currently Selected A")
        processAnswer(answer: "A")
    }
    @IBAction func mB_Clicked(_ sender: Any) {
        print("You Currently Selected B")
        processAnswer(answer: "B")
    }
    @IBAction func mC_Clicked(_ sender: Any) {
        print("You Currently Selected C")
        processAnswer(answer: "C")
    }
    @IBAction func mD_Clicked(_ sender: Any) {
        print("You Currently Selected D")
        processAnswer(answer: "D")
    }
  
    
}


