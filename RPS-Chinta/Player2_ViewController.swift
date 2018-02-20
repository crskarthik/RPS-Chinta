//
//  Player2_ViewController.swift
//  RPS-Chinta
//
//  Created by Chinta,Raja Srikar Karthik on 2/19/18.
//  Copyright © 2018 Chinta,Raja Srikar Karthik. All rights reserved.
//

import UIKit

class Player2_ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var p2_item_bar_LBL: UITabBarItem!
    @IBOutlet weak var p2_name_text_TF: UITextField!
    @IBAction func p2_name_change_TF(_ sender: Any) {
        p2_item_bar_LBL.title="\(p2_name_text_TF.text ?? "Player 2")"
        if p2_name_text_TF.text=="" {
            p2_item_bar_LBL.title="Player 2"
        }
    }
    func p2_name() -> String {
        return p2_item_bar_LBL.title!
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
