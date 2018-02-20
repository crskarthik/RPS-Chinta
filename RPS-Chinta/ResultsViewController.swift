//
//  ResultsViewController.swift
//  RPS-Chinta
//
//  Created by Chinta,Raja Srikar Karthik on 2/19/18.
//  Copyright © 2018 Chinta,Raja Srikar Karthik. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var results_LBL: UILabel!
    @IBOutlet weak var playerStatus_LBL: UILabel!
    
    @IBOutlet weak var player_count_LBL: UILabel!
    
    var loadFlag:Bool = true
    override func viewWillAppear(_ animated: Bool) {
        if loadFlag {
            loadFlag=false
            reset_BTN_Action(true)
        }else{
        if AppDelegate.model.haveResult(){
            results_LBL.text = "Results: "+AppDelegate.model.winner()
            playerStatus_LBL.text="Both selected an option."
            AppDelegate.model.p1Choice = .None
            AppDelegate.model.p2Choice = .None
        }
        else
        {
            results_LBL.text="Round not yet completed.\nBelow are the actions to be taken."
            if AppDelegate.model.p1Choice == .None{
                playerStatus_LBL.text = "\(AppDelegate.model.p1name) did not respond"
            }
            if AppDelegate.model.p2Choice == .None{
                playerStatus_LBL.text = "\(AppDelegate.model.p2name) did not respond"
            }
            if AppDelegate.model.p1Choice == .None && AppDelegate.model.p2Choice == .None{
                playerStatus_LBL.text = "Both \(AppDelegate.model.p1name),\(AppDelegate.model.p2name) did not respond"
            }
        }
            player_count_LBL.text = "Score:\n\t\t\(AppDelegate.model.p1name):  \(AppDelegate.model.p1_win_count)\n\t\t\(AppDelegate.model.p2name):  \(AppDelegate.model.p2_win_count)"
        }
        
    }
    @IBAction func reset_BTN_Action(_ sender: Any) {
        AppDelegate.model.choosePlayer1(pick: .None)
        AppDelegate.model.choosePlayer2(pick: .None)
        AppDelegate.model.setReset(true)
        results_LBL.text="Make your selection on the other tabs"
        playerStatus_LBL.text=""
        player_count_LBL.text=""
    }
    @IBAction func new_GameBTN(_ sender: Any) {
        AppDelegate.model.choosePlayer1(pick: .None)
        AppDelegate.model.choosePlayer2(pick: .None)
        AppDelegate.model.setReset(true)
        results_LBL.text="Make your selection on the other tabs"
        playerStatus_LBL.text=""
        player_count_LBL.text=""
        self.tabBarController?.selectedIndex=1
    }
    

    
}
