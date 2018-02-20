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
        case None,Rock,#imageLiteral(resourceName: "Paper")
    }
}
