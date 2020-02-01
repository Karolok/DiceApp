//
//  ViewController.swift
//  DiceApp
//
//  Created by Karol Bryzgiel on 01/02/2020.
//  Copyright © 2020 Karol Bryzgiel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        let diceArray: [UIImage] = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        let leftDiceValue = Int.random(in: 0...5)
        let rightDiceValue = Int.random(in: 0...5)
    
        diceImageViewOne.image = diceArray[leftDiceValue]
        diceImageViewTwo.image = diceArray[rightDiceValue]
    }
    
}

