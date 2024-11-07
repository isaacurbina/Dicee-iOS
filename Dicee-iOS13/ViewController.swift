//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var diceImageView1: UIImageView!
	
	@IBOutlet weak var diceImageView2: UIImageView!
	
	// region variables
	let diceImages = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
	var leftDiceNumber = 0
	var rightDiceNumber = 5
	// endregion
	
	override func viewDidLoad() {
        super.viewDidLoad()
		diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
		diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
    }

	@IBAction func rollButtonPressed(_ sender: Any) {
		leftDiceNumber = (leftDiceNumber + 1) % 6
		rightDiceNumber = (6 - leftDiceNumber) % 6
		diceImageView1.image = diceImages[leftDiceNumber]
		diceImageView2.image = diceImages[rightDiceNumber]
	}
}

