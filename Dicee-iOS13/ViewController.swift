//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	// region outlets
	@IBOutlet weak var diceImageView1: UIImageView!
	
	@IBOutlet weak var diceImageView2: UIImageView!
	// endregion
	
	
	// region variables
	let diceImages = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
	// endregion
	
	override func viewDidLoad() {
        super.viewDidLoad()
		diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
		diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
    }

	// region actions
	@IBAction func rollButtonPressed(_ sender: Any) {
		diceImageView1.image = diceImages[Int.random(in: 0...5)]
		diceImageView2.image = diceImages[Int.random(in: 0...5)]
		
		UIView.animate(withDuration: 1.0) {
			self.diceImageView1.transform = CGAffineTransform(rotationAngle: CGFloat((Int.random(in: 1...3))) * .pi / 2)
			self.diceImageView2.transform = CGAffineTransform(rotationAngle: CGFloat((Int.random(in: 1...3))) * .pi / 2)
		}
	}
	// endregion
}

