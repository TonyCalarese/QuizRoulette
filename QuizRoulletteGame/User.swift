//
//  user.swift
//  QuizRoulletteGame
//
//  Created by Tony on 10/29/19.
//  Copyright © 2019 Tony Calarese. All rights reserved.
//
import Foundation

class User {
    var mCorrect: Int
      //Initialize Questions
    
    //Initalizer
    init() {
        mCorrect = 0
    }
    
    func adjScore() {
        mCorrect+=1
    }

    //Getting the score of the player
    func getCorrect() -> Int {
        return mCorrect
    }
    
};
