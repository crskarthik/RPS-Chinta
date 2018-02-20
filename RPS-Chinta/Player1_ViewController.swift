//
//  Player1_ViewController.swift
//  RPS-Chinta
//
//  Created by Chinta,Raja Srikar Karthik on 2/19/18.
//  Copyright © 2018 Chinta,Raja Srikar Karthik. All rights reserved.
//

import UIKit

class Player1_ViewController: UIViewController {

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
    override func viewWillAppear(_ animated: Bool) {
         if AppDelegate.model.resetFlag{
            p1_item_bar_LBL.title="Player 1"
            AppDelegate.model.choosePlayer1(pick: .None)
            AppDelegate.model.choosePlayer2(pick: .None)
            p1_status_LBL.text = "Make a selection"
            p1_name_text_TF.text = nil
        }
        assignBTNstatus()
    }
    override func viewWillDisappear(_ animated: Bool) {
        assignBTNstatus()
    }
    func assignBTNstatus(){
        if AppDelegate.model.p1Choice != .None{
            p1_rockBTN.isEnabled = false
            p1_paperBTN.isEnabled = false
            p1_scissorsBTN.isEnabled = false
            p1_lizardBTN.isEnabled = false
            p1_spockBTN.isEnabled = false
        }
        else{
            p1_rockBTN.isEnabled = true
            p1_paperBTN.isEnabled = true
            p1_scissorsBTN.isEnabled = true
            p1_lizardBTN.isEnabled = true
            p1_spockBTN.isEnabled = true
        }
    }
    @IBOutlet weak var player1_LBL: UILabel!
    @IBOutlet weak var p1_name_text_TF: UITextField!
    @IBOutlet weak var p1_item_bar_LBL: UITabBarItem!

    @IBAction func p1_name_change_TF(_ sender: Any) {
        p1_item_bar_LBL.title="\(p1_name_text_TF.text ?? "Player 1")"
        if p1_name_text_TF.text=="" {
            p1_item_bar_LBL.title="Player 1"
        }
    }
    
    
    @IBOutlet weak var p1_rockBTN: UIButton!
    @IBOutlet weak var p1_paperBTN: UIButton!
    @IBOutlet weak var p1_scissorsBTN: UIButton!
    @IBOutlet weak var p1_status_LBL: UILabel!
    @IBOutlet weak var p1_lizardBTN: UIButton!
    @IBOutlet weak var p1_spockBTN: UIButton!
    
    @IBAction func p1_rockActionBTN(_ sender: UIButton) {
        AppDelegate.model.setReset(false)
        AppDelegate.model.choosePlayer1(pick: .Rock)
        p1_status_LBL.text="Rock selected"
    }
    @IBAction func p1_paperActionBTN(_ sender: UIButton) {
                AppDelegate.model.setReset(false)
        AppDelegate.model.choosePlayer1(pick: .Paper)
        p1_status_LBL.text="Paper selected"
    }
    @IBAction func p1_scissorsActionBTN(_ sender: UIButton) {
                AppDelegate.model.setReset(false)
        AppDelegate.model.choosePlayer1(pick: .Scissors)
        p1_status_LBL.text="Scissors selected"
    }
    @IBAction func p1_lizardActionBTN(_ sender: UIButton) {
        AppDelegate.model.setReset(false)
        AppDelegate.model.choosePlayer1(pick: .Lizard)
        p1_status_LBL.text="Lizard selected"
    }
    
    @IBAction func p1_spockActionBTN(_ sender: UIButton) {
        AppDelegate.model.setReset(false)
        AppDelegate.model.choosePlayer1(pick: .Spock)
        p1_status_LBL.text="Spock selected"
    }
}
