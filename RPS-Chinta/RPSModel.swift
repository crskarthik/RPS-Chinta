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
    var resetFlag:Bool = false
    func reset() {
        p1Choice = .None
        p2Choice = .None
        p1_win_count = 0
        p2_win_count = 0
    }
    func setReset(_ flag:Bool){
        if flag{
            reset()
        }
        resetFlag = flag
    }
    var newgameFlag:Bool = false
    func setNewGameFlag(_ flag:Bool) {
        if flag{
            reset()
            setP1name("Player 1")
            setP2name("Player 2")
        }
        newgameFlag = flag
    }

    private init() {
        p1Choice = .None
        p2Choice = .None
    }
    
    func haveResult() -> Bool {
        return p1Choice != .None && p2Choice != .None
    }
    
    func winner() -> String{


        if((p1Choice == .Rock && p2Choice == .Paper)||(p1Choice == .Scissors && p2Choice == .Rock)||(p1Choice == .Paper && p2Choice == .Scissors)||(p1Choice == .Rock && p2Choice == .Spock)||(p1Choice == .Paper && p2Choice == .Lizard)||(p1Choice == .Scissors && p2Choice == .Spock)||(p1Choice == .Lizard && p2Choice == .Rock)||(p1Choice == .Lizard && p2Choice == .Scissors)||(p1Choice == .Spock && p2Choice == .Paper)||(p1Choice == .Spock && p2Choice == .Lizard))
        {
            p2_win_count += 1
            return "\(p2name) Wins"
        }
        else if p1Choice == p2Choice
        {
            return "Tie"
        }
        else{
            p1_win_count+=1
            return "\(p1name) Wins"
        }
    }
    
    func choosePlayer1(pick:Choice) {
        p1Choice = pick
    }
    
    func choosePlayer2(pick:Choice) {
        p2Choice = pick
    }
    var p1name:String = "Player 1"
    var p2name:String = "Player 2"

    func setP1name(_ name:String){
        p1name = name
    }
    func setP2name(_ name:String){
        p2name = name
    }
    class func sharedRPS() -> RPSModel {
        return SharedRPSModel
    }
}
