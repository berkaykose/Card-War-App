//
//  ViewController.swift
//  WarApp
//
//  Created by Berkay Köse on 25.04.2019.
//  Copyright © 2019 Berkay Köse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
       
        let leftRandomNumber = arc4random_uniform(13) + 2
        print("\(leftRandomNumber)")
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        print("\(rightRandomNumber)")
        
        leftImageView.image = UIImage(named: "card" + String(leftRandomNumber))
        
        rightImageView.image = UIImage(named: "card" + String(rightRandomNumber))
        
        if leftRandomNumber > rightRandomNumber {
            
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
            
        }else if rightRandomNumber > leftRandomNumber {
            
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
            
        }else if rightRandomNumber == leftRandomNumber{
            
        }
    }
    

}

