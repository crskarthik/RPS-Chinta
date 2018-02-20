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
    @IBOutlet weak var player1_LBL: UILabel!
    @IBOutlet weak var p1_name_text_TF: UITextField!
    @IBOutlet weak var p1_item_bar_LBL: UITabBarItem!

    @IBAction func p1_name_change_TF(_ sender: Any) {
        p1_item_bar_LBL.title="\(p1_name_text_TF.text ?? "Player 1")"
        if p1_name_text_TF.text=="" {
            p1_item_bar_LBL.title="Player 1"
        }
    }
    public func p1_name() -> String {
        return p1_item_bar_LBL.title!
    }
    
    
    @IBOutlet weak var p1_rockBTN: UIButton!
    @IBOutlet weak var p1_paperBTN: UIButton!
    @IBOutlet weak var p1_scissorsBTN: UIButton!
    

}
