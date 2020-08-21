//
//  ResultViewController.swift
//  Gacha
//
//  Created by ryo.w on 2020/08/21.
//  Copyright © 2020 ryo.w. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    // 乱数入れるためのInt
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        number = Int.random(in: 0...9)
        if number == 9 {
            monsterImageView.image = UIImage(named: "GachaResources/monster/monster010")
            backgroundImageView.image = UIImage(named: "GachaResources/background/bg_gold")
        } else if number > 7 {
            monsterImageView.image = UIImage(named: "GachaResources/monster/monster006")
            backgroundImageView.image = UIImage(named: "GachaResources/background/bg_red")
        } else {
            monsterImageView.image = UIImage(named: "GachaResources/monster/monster003")
            backgroundImageView.image = UIImage(named: "GachaResources/background/bg_blue")
        }
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
