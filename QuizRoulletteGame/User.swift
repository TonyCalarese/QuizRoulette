//
//  user.swift
//  QuizRoulletteGame
//
//  Created by Tony on 10/29/19.
//  Copyright © 2019 Tony Calarese. All rights reserved.
//

import Foundation

class User {
    let mQuestionTotal:Int
    var mCorrect: Int
      //Initialize Questions
    let mQuestionBank = [Questions2(Answer: "A", SwipeText: "SWIPE UP", ButtonText: "Select A"),
                         Questions2(Answer: "B", SwipeText: "SWIPE DOWN", ButtonText: "Select B"),
                         Questions2(Answer: "C", SwipeText: "SWIPE LEFT", ButtonText: "Select C"),
                         Questions2(Answer: "D", SwipeText: "SWIPE RIGHT", ButtonText: "Select D"),
                         Questions2(Answer: "A", SwipeText: "SWIPE UP", ButtonText: "Select A"),
                         Questions2(Answer: "B", SwipeText: "SWIPE DOWN", ButtonText: "Select B"),
                         Questions2(Answer: "C", SwipeText: "SWIPE LEFT", ButtonText: "Select C"),
                         Questions2(Answer: "D", SwipeText: "SWIPE RIGHT", ButtonText: "Select D"),]
    //Initalizer
    init() {
        mQuestionTotal = mQuestionBank.count
        mCorrect = 0
    }
    
    func adjScore() {
        mCorrect+=1
    }
    func getQuestion(key: String, index: Int) -> String{
      return mQuestionBank[index].getQuestion(KEY: key)
    }
    //Getting the score of the player
    func getCorrect() -> Int {
        return mCorrect
    }
    
};
