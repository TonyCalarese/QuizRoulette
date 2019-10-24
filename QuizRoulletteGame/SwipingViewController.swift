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
    let mQuestionBank = [Questions(Answer: "A", Question: "SWIPE UP"),
                         Questions(Answer: "B", Question: "SWIPE DOWN"),
                         Questions(Answer: "C", Question: "SWIPE LEFT"),
                         Questions(Answer: "D", Question: "SWIPE RIGHT"),
                         Questions(Answer: "A", Question: "SWIPE UP")]
    //On Load
       override func viewDidLoad() {
           super.viewDidLoad()
           getQuestion() //Will always go to the first question because of the index being 0 on start
    //Source: https://github.com/calebrwells/A-Swiftly-Tilting-Planet/blob/master/2018/UIGestureRecognizers/Handling%20Swipe%20Gestures/Handling%20Swipe%20Gestures/ViewController.swift
    //https://developer.apple.com/documentation/uikit/touches_presses_and_gestures/handling_uikit_gestures/handling_swipe_gestures
            let ASwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
            ASwipe.direction = .up
            let BSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
            BSwipe.direction = .down
            let CSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
            CSwipe.direction = .left
            let DSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
            DSwipe.direction = .right
           
            view.addGestureRecognizer(ASwipe)
            view.addGestureRecognizer(BSwipe)
            view.addGestureRecognizer(CSwipe)
            view.addGestureRecognizer(DSwipe)
       }
       //Handling the swiping on the screen
       @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
           if sender.state == .ended {
               switch sender.direction {
                case .up: //A
                 processAnswer(answer: "A")
                case .down: //B
                 processAnswer(answer: "B")
               case .left: //C
                processAnswer(answer: "C")
               case .right: //D
                   processAnswer(answer: "D")
               default: //If you dont swipe in those dirrections
                   break
               }
           }
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
       
    @IBOutlet weak var mQuestionLabel: UILabel!
    


}
