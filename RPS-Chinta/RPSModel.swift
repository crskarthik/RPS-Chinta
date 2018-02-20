//
//  RPSModel.swift
//  RPS-Chinta
//
//  Created by Chinta,Raja Srikar Karthik on 2/19/18.
//  Copyright © 2018 Chinta,Raja Srikar Karthik. All rights reserved.
//

import Foundation

class RPSModel
{
    private static var SharedRPSModel:RPSModel{
        let rpsmodel=RPSModel()
        return rpsmodel
    }
    enum Choice {
        case None,Rock,Paper,Scissors,Lizard,Spock
    }
    
    private var _p1Choice:Choice = .None
    var p1Choice:Choice{
        get{
            return _p1Choice
        }
        set{
            _p1Choice=newValue
        }
    }
    
    private var _p2Choice:Choice = .None
    var p2Choice:Choice{
        get{
            return _p2Choice
        }
        set{
            _p2Choice=newValue
        }
    }
    

    private var _p1_win_count:Int = 0
    var p1_win_count:Int{
        get{
            return _p1_win_count
        }
        set{
            _p1_win_count=newValue
        }
    }
    private var _p2_win_count:Int = 0
    var p2_win_count:Int{
        get{
            return _p2_win_count
        }
        set{
            _p2_win_count=newValue
        }
    }
    
    func reset(){
        p1Choice = .None
        p2Choice = .None
    }
    private init() {
        p1Choice = .None
        p2Choice = .None
    }
    
    func haveResult() -> Bool {
        return !(p1Choice == .None && p2Choice == .None)
    }
    
    func winner() -> String{
        if(p1Choice == .Rock && p2Choice == .Paper)||(p1Choice == .Scissors && p2Choice == .Rock)||(p1Choice == .Paper && p2Choice == .Scissors)
        {
            p2_win_count += 1
            return "Player2 Wins"
        }
        else if p1Choice == p2Choice
        {
            return "Tie"
        }
        else{
            p1_win_count+=1
            return "Player1 Wins"
        }
    }
    
    func choosePlayer1(pick:Choice) {
        p1Choice = pick
    }
    
    func choosePlayer2(pick:Choice) {
        p2Choice = pick
    }
    
    class func sharedRPS() -> RPSModel {
        return SharedRPSModel
    }
}
