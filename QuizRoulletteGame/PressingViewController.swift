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
 
    
    
    
    //Declaring the Buttons Page
    //@IBOutlet weak var mQuestionLabel: UILabel!
    @IBOutlet var mQuestionLabelPress: UILabel!
    //@IBOutlet weak var mQuestionLabel: UILabel!
    
    
    //Button Click Functions
    
    @IBAction func mA_Clicked(_ sender: Any) {
        print("You Currently Selected A")
        processAnswer(answer: "A")
        setNextQuestion()
    }
    @IBAction func mB_Clicked(_ sender: Any) {
        print("You Currently Selected B")
        processAnswer(answer: "B")
        setNextQuestion()
    }
    @IBAction func mC_Clicked(_ sender: Any) {
        print("You Currently Selected C")
        processAnswer(answer: "C")
        setNextQuestion()
    }
    @IBAction func mD_Clicked(_ sender: Any) {
        print("You Currently Selected D")
        processAnswer(answer: "D")
        setNextQuestion()
    }
  
    
    
    //On Load
       override func viewDidLoad() {
           super.viewDidLoad()
           //Will always go to the first question because of the
        print("Made it to create")
           getQuestion()
       }
       
       //Core Class Functions
       func processAnswer(answer: String) -> Void {
             if mCurrentIndex >= mQuestionBank.count
                   { //If they have answered all the questions do not compare anwers anymore
                       self.mQuestionLabelPress.text = getFinishingText()
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
            print("Made it to getQuestion")
             self.mQuestionLabelPress.text = mQuestionBank[mCurrentIndex].mQuestionText
         }
       
         //This function will stop the questions from filling the area and then make sure that the user goes backwards.
         func getFinishingText() -> String{ //Being worked on as I am figuring out the varaibles part with segues
             return "You have a Score of " + String(mScore)
         }
       
      
}


