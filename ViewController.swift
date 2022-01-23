//
//  ViewController.swift
//  Lesson4WarCardGame
//
//  Created by Saraphtha Sasikumar on 2020-11-20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var leftScore = 0
    var rightScore = 0
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
   
    @IBAction func resetButton(_ sender: UIButton) {
        
        leftScore = 0
        rightScore = 0 
        leftScoreLabel.text = String(leftScore)
        rightScoreLabel.text = String(rightScore)
        
    }
    
   
    @IBAction func dealButton(_ sender: UIButton) {
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if rightNumber > leftNumber{
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
    
    
    
    
    
    
    
    
}

